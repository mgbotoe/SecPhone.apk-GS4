.class public Lcom/android/phone/KTCallForwardingAll;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallForwardingAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallForwardingAll$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/EditTextPreference;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;

.field reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/KTCallForwardingAll;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallForwardingAll$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingAll;Lcom/android/phone/KTCallForwardingAll$1;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    .line 66
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 71
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 413
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/KTCallForwardingAll;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/KTCallForwardingAll;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/KTCallForwardingAll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/KTCallForwardingAll;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/KTCallForwardingAll;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/phone/KTCallForwardingAll$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/KTCallForwardingAll;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/KTCallForwardingAll;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/KTCallForwardingAll;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/KTCallForwardingAll;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method private destoryProgressDialogFromNoResponse()V
    .locals 5

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0905fc

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 234
    .local v0, NoResponse:Landroid/widget/Toast;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 235
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/phone/KTCallForwardingAll$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/KTCallForwardingAll$3;-><init>(Lcom/android/phone/KTCallForwardingAll;Landroid/widget/Toast;)V

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 249
    .end local v0           #NoResponse:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 12
    .parameter "cf"

    .prologue
    const/16 v11, 0x8

    const/4 v0, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v5, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 253
    .local v1, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 254
    const-string v6, "KTCallForwardingAll"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGetCFResponse done, callForwardInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v6, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v6, :cond_0

    .line 296
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v0, :cond_2

    .line 261
    .local v0, active:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    .line 263
    .local v4, progress:Landroid/app/ProgressDialog;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 265
    iput-boolean v5, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 266
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 267
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 270
    :cond_1
    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    const v6, 0x7f0905ee

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #active:Z
    .end local v4           #progress:Landroid/app/ProgressDialog;
    :cond_2
    move v0, v5

    .line 260
    goto :goto_1

    .line 275
    .restart local v0       #active:Z
    .restart local v4       #progress:Landroid/app/ProgressDialog;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0905f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09060e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 279
    .local v3, number:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_4

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 281
    :cond_4
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 284
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 290
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 291
    const v6, 0x7f0905ef

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 293
    :cond_7
    const v6, 0x7f0905f1

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 472
    const-string v0, "KTCallForwardingAll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 474
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->addPreferencesFromResource(I)V

    .line 130
    const-string v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    .line 131
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/phone/KTCallForwardingAll$1;

    invoke-direct {v1, p0}, Lcom/android/phone/KTCallForwardingAll$1;-><init>(Lcom/android/phone/KTCallForwardingAll;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0905e3

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0905e6

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 155
    const-string v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOff:Landroid/preference/PreferenceScreen;

    .line 156
    const-string v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingStatus:Landroid/preference/PreferenceScreen;

    .line 157
    const-string v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingInfo:Landroid/preference/PreferenceScreen;

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 163
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0905ed

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 169
    .local v7, context:Landroid/content/Context;
    iput v4, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    .line 170
    iput v8, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    .line 172
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_1

    .line 175
    const/4 v1, 0x4

    .line 176
    .local v1, action:I
    iget v0, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 177
    .local v4, time:I
    :goto_0
    const/4 v3, 0x0

    .line 178
    .local v3, number:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    .line 180
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v0, :cond_4

    .line 181
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    :goto_1
    sget-boolean v0, Lcom/android/phone/KTCallForwardingAll;->DBG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "KTCallForwardingAll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",number="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingAll;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    .line 190
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-virtual {v5, v8}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 191
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    .line 192
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_1
    move v4, v8

    .line 223
    :cond_2
    :goto_2
    return v4

    .line 176
    .restart local v1       #action:I
    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    .line 184
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    goto :goto_1

    .line 196
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_5
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_6

    .line 199
    iput-boolean v4, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingAll;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    .line 203
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 205
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    .line 206
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    :cond_6
    move v4, v8

    .line 208
    goto :goto_2

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_8

    .line 211
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0905e9

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    const v0, 0x7f0905ea

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 214
    const v0, 0x7f090021

    new-instance v2, Lcom/android/phone/KTCallForwardingAll$2;

    invoke-direct {v2, p0}, Lcom/android/phone/KTCallForwardingAll$2;-><init>(Lcom/android/phone/KTCallForwardingAll;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v6           #alert:Landroid/app/AlertDialog$Builder;
    :cond_8
    move v4, v8

    .line 221
    goto :goto_2
.end method

.method showReturnError(Ljava/lang/Throwable;)Z
    .locals 12
    .parameter "exception"

    .prologue
    const v11, 0x7f090607

    const v10, 0x7f0905f5

    const v9, 0x7f0905f2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 301
    .local v2, errorcode:Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 303
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_0

    .line 304
    const-string v6, "ril.ss.errorcode"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    if-nez v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v4

    .line 315
    :cond_1
    const/4 v3, 0x0

    .line 317
    .local v3, errorvalue:I
    const-string v6, "SOO_Test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v6, "37"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 321
    goto :goto_0

    .line 322
    :cond_2
    const-string v6, "38"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 323
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 324
    goto :goto_0

    .line 325
    :cond_3
    const-string v6, "43"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 326
    const v6, 0x7f0905f3

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 327
    goto :goto_0

    .line 328
    :cond_4
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 329
    const v6, 0x7f0905f4

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 330
    goto :goto_0

    .line 331
    :cond_5
    const-string v6, "10"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 332
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 333
    goto :goto_0

    .line 334
    :cond_6
    const-string v6, "11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 335
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 336
    goto/16 :goto_0

    .line 337
    :cond_7
    const-string v6, "13"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 338
    const v6, 0x7f0905f6

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 339
    goto/16 :goto_0

    .line 340
    :cond_8
    const-string v6, "16"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 341
    const v6, 0x7f0905f7

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 342
    goto/16 :goto_0

    .line 343
    :cond_9
    const-string v6, "17"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 344
    const v6, 0x7f0905f8

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 345
    goto/16 :goto_0

    .line 346
    :cond_a
    const-string v6, "18"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 347
    const v6, 0x7f0905f9

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 348
    goto/16 :goto_0

    .line 349
    :cond_b
    const-string v6, "19"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 350
    const v6, 0x7f0905fa

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 351
    goto/16 :goto_0

    .line 352
    :cond_c
    const-string v6, "20"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 353
    const v6, 0x7f0905fb

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 354
    goto/16 :goto_0

    .line 355
    :cond_d
    const-string v6, "34"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 356
    const v6, 0x7f0905fc

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 357
    goto/16 :goto_0

    .line 358
    :cond_e
    const-string v6, "35"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 359
    const v6, 0x7f0905fd

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 360
    goto/16 :goto_0

    .line 361
    :cond_f
    const-string v6, "36"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 362
    const v6, 0x7f0905fe

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 363
    goto/16 :goto_0

    .line 364
    :cond_10
    const-string v6, "121"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 365
    const v6, 0x7f0905ff

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 366
    goto/16 :goto_0

    .line 367
    :cond_11
    const-string v6, "122"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 368
    const v6, 0x7f090600

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 369
    goto/16 :goto_0

    .line 370
    :cond_12
    const-string v6, "71"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 371
    const v6, 0x7f090601

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 372
    goto/16 :goto_0

    .line 373
    :cond_13
    const-string v6, "72"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 374
    const v6, 0x7f090602

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 375
    goto/16 :goto_0

    .line 376
    :cond_14
    const-string v6, "54"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 377
    const v6, 0x7f090603

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 378
    goto/16 :goto_0

    .line 379
    :cond_15
    const-string v6, "9"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 380
    const v6, 0x7f090604

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 381
    goto/16 :goto_0

    .line 382
    :cond_16
    const-string v6, "21"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 383
    const v6, 0x7f090605

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 384
    goto/16 :goto_0

    .line 385
    :cond_17
    const-string v6, "27"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 386
    const v6, 0x7f090606

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 387
    goto/16 :goto_0

    .line 388
    :cond_18
    const-string v6, "29"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 389
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 390
    goto/16 :goto_0

    .line 391
    :cond_19
    const-string v6, "30"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 392
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 393
    goto/16 :goto_0

    .line 394
    :cond_1a
    const-string v6, "123"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 395
    const v6, 0x7f090608

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 396
    goto/16 :goto_0

    .line 397
    :cond_1b
    const-string v6, "124"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 398
    const v6, 0x7f090609

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 399
    goto/16 :goto_0

    .line 400
    :cond_1c
    const-string v6, "125"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 401
    const v6, 0x7f09060a

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 402
    goto/16 :goto_0

    .line 403
    :cond_1d
    const-string v6, "126"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 404
    const v6, 0x7f09060b

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 405
    goto/16 :goto_0

    .line 406
    :cond_1e
    const-string v6, "127"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    const v6, 0x7f09060c

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 408
    goto/16 :goto_0
.end method
