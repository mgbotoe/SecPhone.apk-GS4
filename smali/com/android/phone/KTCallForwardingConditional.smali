.class public Lcom/android/phone/KTCallForwardingConditional;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallForwardingConditional.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallForwardingConditional$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final Bearer_Service_Not_Provisoned:Ljava/lang/String;

.field private final Call_Barred:Ljava/lang/String;

.field private final Data_Missing:Ljava/lang/String;

.field private final Illegal_SS_Operation:Ljava/lang/String;

.field private final Negative_PW_Check:Ljava/lang/String;

.field private final Number_Of_PW_Attempts_Violation:Ljava/lang/String;

.field private final Pw_Registration_Failure:Ljava/lang/String;

.field private final SS_Error_Status:Ljava/lang/String;

.field private final SS_Incompatibility:Ljava/lang/String;

.field private final SS_Not_Available:Ljava/lang/String;

.field private final SS_Subscription_Violation:Ljava/lang/String;

.field private final System_Failure:Ljava/lang/String;

.field private final Teleservice_Not_Provisoned:Ljava/lang/String;

.field private final Unexpected_Data_Value:Ljava/lang/String;

.field private final Unknown_Subscriber:Ljava/lang/String;

.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

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

    .line 55
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/KTCallForwardingConditional;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingConditional;Lcom/android/phone/KTCallForwardingConditional$1;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    .line 70
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    .line 75
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    .line 77
    const-string v0, "25"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Pw_Registration_Failure:Ljava/lang/String;

    .line 78
    const-string v0, "26"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Negative_PW_Check:Ljava/lang/String;

    .line 79
    const-string v0, "2B"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Number_Of_PW_Attempts_Violation:Ljava/lang/String;

    .line 80
    const-string v0, "01"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Unknown_Subscriber:Ljava/lang/String;

    .line 81
    const-string v0, "0A"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Bearer_Service_Not_Provisoned:Ljava/lang/String;

    .line 82
    const-string v0, "0B"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Teleservice_Not_Provisoned:Ljava/lang/String;

    .line 83
    const-string v0, "0D"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Call_Barred:Ljava/lang/String;

    .line 84
    const-string v0, "10"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Illegal_SS_Operation:Ljava/lang/String;

    .line 85
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->SS_Error_Status:Ljava/lang/String;

    .line 86
    const-string v0, "12"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->SS_Not_Available:Ljava/lang/String;

    .line 87
    const-string v0, "13"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->SS_Subscription_Violation:Ljava/lang/String;

    .line 88
    const-string v0, "14"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->SS_Incompatibility:Ljava/lang/String;

    .line 89
    const-string v0, "22"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->System_Failure:Ljava/lang/String;

    .line 90
    const-string v0, "23"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Data_Missing:Ljava/lang/String;

    .line 91
    const-string v0, "24"

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->Unexpected_Data_Value:Ljava/lang/String;

    .line 412
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/KTCallForwardingConditional;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/KTCallForwardingConditional;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/KTCallForwardingConditional;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/KTCallForwardingConditional;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/KTCallForwardingConditional;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/phone/KTCallForwardingConditional$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/KTCallForwardingConditional;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/KTCallForwardingConditional;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/KTCallForwardingConditional;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/KTCallForwardingConditional;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method private destoryProgressDialogFromNoResponse()V
    .locals 5

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0905fc

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    .local v0, NoResponse:Landroid/widget/Toast;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    .line 233
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/phone/KTCallForwardingConditional$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/KTCallForwardingConditional$3;-><init>(Lcom/android/phone/KTCallForwardingConditional;Landroid/widget/Toast;)V

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 247
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

    .line 250
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 251
    .local v1, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 252
    const-string v6, "KTCallForwardingConditional"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGetCFResponse done, callForwardInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v6, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v6, :cond_0

    .line 294
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v0, :cond_2

    .line 259
    .local v0, active:Z
    :goto_1
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    .line 261
    .local v4, progress:Landroid/app/ProgressDialog;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    iput-boolean v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    .line 264
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 265
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    .line 268
    :cond_1
    if-eqz v0, :cond_6

    .line 269
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    const v6, 0x7f0905ee

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #active:Z
    .end local v4           #progress:Landroid/app/ProgressDialog;
    :cond_2
    move v0, v5

    .line 258
    goto :goto_1

    .line 273
    .restart local v0       #active:Z
    .restart local v4       #progress:Landroid/app/ProgressDialog;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0905f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09060d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 277
    .local v3, number:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_4

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
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

    .line 279
    :cond_4
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 282
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 288
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 289
    const v6, 0x7f0905ef

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 291
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
    .line 226
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 472
    const-string v0, "KTCallForwardingConditional"

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
    .line 127
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->addPreferencesFromResource(I)V

    .line 131
    const-string v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    .line 132
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/phone/KTCallForwardingConditional$1;

    invoke-direct {v1, p0}, Lcom/android/phone/KTCallForwardingConditional$1;-><init>(Lcom/android/phone/KTCallForwardingConditional;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0905e2

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0905e5

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 154
    const-string v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOff:Landroid/preference/PreferenceScreen;

    .line 155
    const-string v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingStatus:Landroid/preference/PreferenceScreen;

    .line 156
    const-string v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingConditional;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingInfo:Landroid/preference/PreferenceScreen;

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mtimer:Ljava/util/Timer;

    .line 162
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

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 168
    .local v7, context:Landroid/content/Context;
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    .line 169
    iput v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I

    .line 171
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_1

    .line 174
    const/4 v1, 0x4

    .line 175
    .local v1, action:I
    iget v0, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 176
    .local v4, time:I
    :goto_0
    const/4 v3, 0x0

    .line 177
    .local v3, number:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    .line 179
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v0, :cond_4

    .line 180
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    :goto_1
    sget-boolean v0, Lcom/android/phone/KTCallForwardingConditional;->DBG:Z

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "KTCallForwardingConditional"

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

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    .line 188
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-virtual {v5, v8}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 189
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    .line 190
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_1
    move v4, v8

    .line 221
    :cond_2
    :goto_2
    return v4

    .line 175
    .restart local v1       #action:I
    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    .line 182
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    goto :goto_1

    .line 193
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_5
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_6

    .line 196
    iput-boolean v4, p0, Lcom/android/phone/KTCallForwardingConditional;->mChecked:Z

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingConditional;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mProgress:Ljava/lang/ref/WeakReference;

    .line 200
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional;->mHandler:Lcom/android/phone/KTCallForwardingConditional$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 202
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingConditional;->destoryProgressDialogFromNoResponse()V

    .line 203
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    :cond_6
    move v4, v8

    .line 205
    goto :goto_2

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingConditional;->mCheckedProgressDialog:Z

    if-nez v0, :cond_8

    .line 209
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0905e7

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 211
    const v0, 0x7f0905e8

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 212
    const v0, 0x7f090021

    new-instance v2, Lcom/android/phone/KTCallForwardingConditional$2;

    invoke-direct {v2, p0}, Lcom/android/phone/KTCallForwardingConditional$2;-><init>(Lcom/android/phone/KTCallForwardingConditional;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v6           #alert:Landroid/app/AlertDialog$Builder;
    :cond_8
    move v4, v8

    .line 219
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

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingConditional;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 299
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 300
    .local v2, errorcode:Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 302
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_0

    .line 303
    const-string v6, "ril.ss.errorcode"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v4

    .line 314
    :cond_1
    const/4 v3, 0x0

    .line 316
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

    .line 318
    const-string v6, "37"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 320
    goto :goto_0

    .line 321
    :cond_2
    const-string v6, "38"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 322
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 323
    goto :goto_0

    .line 324
    :cond_3
    const-string v6, "43"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 325
    const v6, 0x7f0905f3

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 326
    goto :goto_0

    .line 327
    :cond_4
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 328
    const v6, 0x7f0905f4

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 329
    goto :goto_0

    .line 330
    :cond_5
    const-string v6, "10"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 331
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 332
    goto :goto_0

    .line 333
    :cond_6
    const-string v6, "11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 334
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 335
    goto/16 :goto_0

    .line 336
    :cond_7
    const-string v6, "13"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 337
    const v6, 0x7f0905f6

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 338
    goto/16 :goto_0

    .line 339
    :cond_8
    const-string v6, "16"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 340
    const v6, 0x7f0905f7

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 341
    goto/16 :goto_0

    .line 342
    :cond_9
    const-string v6, "17"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 343
    const v6, 0x7f0905f8

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 344
    goto/16 :goto_0

    .line 345
    :cond_a
    const-string v6, "18"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 346
    const v6, 0x7f0905f9

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 347
    goto/16 :goto_0

    .line 348
    :cond_b
    const-string v6, "19"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 349
    const v6, 0x7f0905fa

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 350
    goto/16 :goto_0

    .line 351
    :cond_c
    const-string v6, "20"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 352
    const v6, 0x7f0905fb

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 353
    goto/16 :goto_0

    .line 354
    :cond_d
    const-string v6, "34"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 355
    const v6, 0x7f0905fc

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 356
    goto/16 :goto_0

    .line 357
    :cond_e
    const-string v6, "35"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 358
    const v6, 0x7f0905fd

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 359
    goto/16 :goto_0

    .line 360
    :cond_f
    const-string v6, "36"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 361
    const v6, 0x7f0905fe

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 362
    goto/16 :goto_0

    .line 363
    :cond_10
    const-string v6, "121"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 364
    const v6, 0x7f0905ff

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 365
    goto/16 :goto_0

    .line 366
    :cond_11
    const-string v6, "122"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 367
    const v6, 0x7f090600

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 368
    goto/16 :goto_0

    .line 369
    :cond_12
    const-string v6, "71"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 370
    const v6, 0x7f090601

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 371
    goto/16 :goto_0

    .line 372
    :cond_13
    const-string v6, "72"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 373
    const v6, 0x7f090602

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 374
    goto/16 :goto_0

    .line 375
    :cond_14
    const-string v6, "54"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 376
    const v6, 0x7f090603

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 377
    goto/16 :goto_0

    .line 378
    :cond_15
    const-string v6, "9"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 379
    const v6, 0x7f090604

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 380
    goto/16 :goto_0

    .line 381
    :cond_16
    const-string v6, "21"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 382
    const v6, 0x7f090605

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 383
    goto/16 :goto_0

    .line 384
    :cond_17
    const-string v6, "27"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 385
    const v6, 0x7f090606

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 386
    goto/16 :goto_0

    .line 387
    :cond_18
    const-string v6, "29"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 388
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 389
    goto/16 :goto_0

    .line 390
    :cond_19
    const-string v6, "30"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 391
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 392
    goto/16 :goto_0

    .line 393
    :cond_1a
    const-string v6, "123"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 394
    const v6, 0x7f090608

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 395
    goto/16 :goto_0

    .line 396
    :cond_1b
    const-string v6, "124"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 397
    const v6, 0x7f090609

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 398
    goto/16 :goto_0

    .line 399
    :cond_1c
    const-string v6, "125"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 400
    const v6, 0x7f09060a

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_1d
    const-string v6, "126"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 403
    const v6, 0x7f09060b

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 404
    goto/16 :goto_0

    .line 405
    :cond_1e
    const-string v6, "127"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    const v6, 0x7f09060c

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 407
    goto/16 :goto_0
.end method
