.class public Lcom/android/phone/PhoneUtilsCamera;
.super Ljava/lang/Object;
.source "PhoneUtilsCamera.java"


# static fields
.field private static mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

.field private static mServiceConn:Landroid/content/ServiceConnection;

.field private static mSvcConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCamera;->mSvcConnected:Z

    .line 98
    new-instance v0, Lcom/android/phone/PhoneUtilsCamera$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsCamera$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsCamera;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/phone/PhoneUtilsCamera;->mSvcConnected:Z

    return p0
.end method

.method public static getDirectPhotoShareDialogDoNotShowAgain()Z
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_direct_photo_share_dialog_do_not_show_again_check_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getMessageIntent(Lcom/android/internal/telephony/Call;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "call"
    .parameter "pictureUri"

    .prologue
    .line 199
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCamera;->getRecipients(Lcom/android/internal/telephony/Call;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, recipients:[Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageMms"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "recipients"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    return-object v0
.end method

.method private static getRecipients(Lcom/android/internal/telephony/Call;)[Ljava/lang/String;
    .locals 10
    .parameter "call"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 159
    .local v4, phoneType:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 162
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 164
    .local v0, cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v6, v0, :cond_0

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v0, :cond_1

    .line 166
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 168
    .local v5, recipients:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 169
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 170
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    .end local v3           #index:I
    .end local v5           #recipients:[Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v6, v0, :cond_3

    .line 173
    new-array v5, v9, [Ljava/lang/String;

    .line 175
    .restart local v5       #recipients:[Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 176
    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 195
    .end local v0           #cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :cond_2
    :goto_1
    return-object v5

    .line 178
    .end local v5           #recipients:[Ljava/lang/String;
    .restart local v0       #cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 179
    .restart local v5       #recipients:[Ljava/lang/String;
    const-string v6, "PhoneUtilsCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdmaPhoneCallState.getCurrentCallState() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    .end local v0           #cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v5           #recipients:[Ljava/lang/String;
    :cond_4
    if-eq v4, v9, :cond_5

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 184
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 186
    .restart local v5       #recipients:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #index:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 187
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 188
    .restart local v1       #connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 191
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    .end local v3           #index:I
    .end local v5           #recipients:[Ljava/lang/String;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 193
    .restart local v5       #recipients:[Ljava/lang/String;
    const-string v6, "PhoneUtilsCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method private static getTakePhotoIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v1, "direct-photo-share"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public static putDirectPhotoShareDialogDoNotShowAgain(Z)V
    .locals 2
    .parameter "checkedState"

    .prologue
    .line 68
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_direct_photo_share_dialog_do_not_show_again_check_state"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    return-void
.end method

.method public static sendMessage(Lcom/android/internal/telephony/Call;Landroid/net/Uri;)V
    .locals 6
    .parameter "call"
    .parameter "pictureUri"

    .prologue
    .line 132
    :try_start_0
    sget-object v3, Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCamera;->getRecipients(Lcom/android/internal/telephony/Call;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, recipients:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.Send.BACKGROUND_MSG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "recipients"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v3, "message"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "requestApp"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    if-eqz p1, :cond_1

    .line 144
    sget-object v3, Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;

    const/16 v4, 0x2328

    const/16 v5, 0x384

    invoke-interface {v3, v4, v5, v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->sendMessage(IILandroid/content/Intent;)V

    .line 154
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #recipients:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #recipients:[Ljava/lang/String;
    :cond_1
    const-string v3, "PhoneUtilsCamera"

    const-string v4, "Picture URI is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #recipients:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startMessageActivity(Lcom/android/internal/telephony/Call;Landroid/net/Uri;)V
    .locals 5
    .parameter "call"
    .parameter "pictureUri"

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsCamera;->getMessageIntent(Lcom/android/internal/telephony/Call;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 216
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneUtilsCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startMessageBackgroundSenderService()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/IMessageBackgroundSender;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/PhoneUtilsCamera;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 92
    return-void
.end method

.method public static startTakePhotoActivity()V
    .locals 5

    .prologue
    .line 81
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->getTakePhotoIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneUtilsCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
