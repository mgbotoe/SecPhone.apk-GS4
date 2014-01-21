.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->mContext:Landroid/content/Context;

    .line 368
    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->mContext:Landroid/content/Context;

    .line 369
    return-void
.end method

.method private getTitleString(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const v2, 0x7f09083e

    .line 409
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS_TITLE:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 411
    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS_TITLE:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_1
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS_TITLE:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    sget-object v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS_TITLE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 384
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, viewHolder:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    if-nez p2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 392
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040094

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 393
    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;

    .end local v1           #viewHolder:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    invoke-direct {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;-><init>()V

    .line 394
    .restart local v1       #viewHolder:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    const v2, 0x7f0a02a4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->image:Landroid/widget/ImageView;

    .line 395
    const v2, 0x7f0a0189

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->text:Landroid/widget/TextView;

    .line 396
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 402
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    iget-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->text:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->getTitleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-object p2

    .line 399
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #viewHolder:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    check-cast v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;

    .restart local v1       #viewHolder:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;
    goto :goto_0
.end method
