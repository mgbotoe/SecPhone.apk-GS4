.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$2;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$2;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 202
    .local v2, inputSize:[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 203
    .local v5, size:[I
    const/4 v3, 0x0

    .line 204
    .local v3, keep:I
    const/4 v4, 0x0

    .line 206
    .local v4, septets:I
    const/4 v7, 0x3

    aget v7, v2, v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 207
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v5

    .line 211
    :goto_0
    const/4 v7, 0x2

    aget v7, v5, v7

    sub-int v8, p6, p5

    add-int v3, v7, v8

    .line 218
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 219
    const-string v6, ""

    .line 241
    :cond_0
    :goto_1
    return-object v6

    .line 209
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    goto :goto_0

    .line 220
    :cond_2
    sub-int v7, p3, p2

    if-lt v3, v7, :cond_4

    .line 221
    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v3, v7, :cond_3

    .line 222
    const-string v6, ""

    goto :goto_1

    .line 224
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 227
    :cond_4
    const/4 v6, 0x0

    .line 228
    .local v6, subChar:Ljava/lang/CharSequence;
    move v0, v3

    .line 231
    .local v0, decrKeep:I
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .end local v0           #decrKeep:I
    .local v1, decrKeep:I
    add-int v7, p2, v0

    invoke-interface {p1, p2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 234
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 239
    :goto_3
    if-le v4, v3, :cond_0

    move v0, v1

    .end local v1           #decrKeep:I
    .restart local v0       #decrKeep:I
    goto :goto_2

    .line 235
    .end local v0           #decrKeep:I
    .restart local v1       #decrKeep:I
    :catch_0
    move-exception v7

    goto :goto_3

    .line 202
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
