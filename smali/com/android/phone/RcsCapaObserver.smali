.class public Lcom/android/phone/RcsCapaObserver;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallMenu:Landroid/view/Menu;

.field private mInCallUi:Lcom/android/phone/InCallTouchUi;

.field private mIsOwnFtCapable:Z

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/RcsCapaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/InCallTouchUi;Landroid/view/Menu;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "handler"
    .parameter "mInCallTouchUi"
    .parameter "menu"
    .parameter "context"
    .parameter "callManager"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 39
    iput-boolean v3, p0, Lcom/android/phone/RcsCapaObserver;->mIsOwnFtCapable:Z

    .line 45
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsCapaObserver() - inCallTouchUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 48
    iput-boolean v3, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 49
    iput-object p4, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 51
    iput-object p5, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 52
    iput-object p3, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    .line 53
    new-instance v0, Lcom/android/phone/RcsCapaObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/RcsCapaObserver$1;-><init>(Lcom/android/phone/RcsCapaObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 90
    sget-object v0, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver : onChange()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 91
    if-nez p1, :cond_0

    .line 94
    sget-object v0, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver: calling update option menu"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RcsCapaObserver;->updateUI()V

    .line 97
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 98
    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 6
    .parameter "cr"

    .prologue
    const/4 v5, 0x1

    .line 75
    sget-object v3, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : registerSelfAsObserver()"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 76
    iget-boolean v3, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    if-nez v3, :cond_0

    .line 77
    iput-boolean v5, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 78
    iget-object v3, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, telNum:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    invoke-static {v1}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, telNumUri:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, queryUri:Landroid/net/Uri;
    invoke-virtual {p1, v0, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    sget-object v3, Lcom/android/phone/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    .end local v0           #queryUri:Landroid/net/Uri;
    .end local v1           #telNum:Ljava/lang/String;
    .end local v2           #telNumUri:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 4

    .prologue
    .line 64
    sget-object v1, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsCapaObserver: unregisterSelfAsObseverAndCloseCursor()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 66
    iget-boolean v1, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/RcsCapaObserver;->mRegistered:Z

    .line 68
    iget-object v1, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    iget-object v1, p0, Lcom/android/phone/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 102
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, telNum:Ljava/lang/String;
    const/4 v7, 0x0

    .line 104
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v2, :cond_6

    .line 105
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : opening cursor"

    invoke-static {v2, v4, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 107
    invoke-static {v8}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, telNumUri:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 113
    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 119
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #telNumUri:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/phone/RcsCapaObserver;->mInCallUi:Lcom/android/phone/InCallTouchUi;

    .line 120
    .local v10, view:Lcom/android/phone/InCallTouchUi;
    if-eqz v10, :cond_5

    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    if-eqz v2, :cond_5

    .line 121
    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mInCallMenu:Landroid/view/Menu;

    const v3, 0x7f0a03c1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 122
    .local v6, RcsFileTransferItem:Landroid/view/MenuItem;
    if-eqz v6, :cond_1

    .line 123
    invoke-static {v7}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/RcsCapaObserver;->mContext:Landroid/content/Context;

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 126
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : true"

    invoke-static {v2, v3, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 139
    .end local v6           #RcsFileTransferItem:Landroid/view/MenuItem;
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_2
    return-void

    .line 116
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v9       #telNumUri:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    invoke-static {v2, v3, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 128
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #telNumUri:Ljava/lang/String;
    .restart local v6       #RcsFileTransferItem:Landroid/view/MenuItem;
    .restart local v10       #view:Lcom/android/phone/InCallTouchUi;
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver : false"

    invoke-static {v2, v3, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 133
    .end local v6           #RcsFileTransferItem:Landroid/view/MenuItem;
    :cond_5
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RcsCapaObserver mInCallUi.mInCallButtonsView is null !"

    invoke-static {v2, v3, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 136
    .end local v10           #view:Lcom/android/phone/InCallTouchUi;
    :cond_6
    sget-object v2, Lcom/android/phone/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mInCallUi is null !"

    invoke-static {v2, v3, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method
