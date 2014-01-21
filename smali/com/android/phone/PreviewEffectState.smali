.class public Lcom/android/phone/PreviewEffectState;
.super Ljava/lang/Object;
.source "PreviewEffectState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreviewEffectState$ThemeViewStatus;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/PreviewEffectState;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDualCameraEnabled:Z

.field private mIsEmotionalAniAuto:Z

.field private mIsShowingCartoonView:Z

.field private mIsShowingEmotionalAni:Z

.field private mIsShowingThemeView:Z

.field protected themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 28
    sget v2, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v2, v0, :cond_0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/PreviewEffectState;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingEmotionalAni:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsEmotionalAniAuto:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingThemeView:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingCartoonView:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsDualCameraEnabled:Z

    .line 45
    sget-object v0, Lcom/android/phone/PreviewEffectState$ThemeViewStatus;->NONE:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    iput-object v0, p0, Lcom/android/phone/PreviewEffectState;->themeViewCurrentStatus:Lcom/android/phone/PreviewEffectState$ThemeViewStatus;

    .line 66
    sget-boolean v0, Lcom/android/phone/PreviewEffectState;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreviewEffectState constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PreviewEffectState;->log(Ljava/lang/String;Z)V

    .line 67
    :cond_0
    sget-boolean v0, Lcom/android/phone/PreviewEffectState;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PreviewEffectState;->log(Ljava/lang/String;)V

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/android/phone/PreviewEffectState;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/PreviewEffectState;
    .locals 4
    .parameter

    .prologue
    .line 55
    const-class v1, Lcom/android/phone/PreviewEffectState;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/android/phone/PreviewEffectState;->sInstance:Lcom/android/phone/PreviewEffectState;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/phone/PreviewEffectState;

    invoke-direct {v0, p0}, Lcom/android/phone/PreviewEffectState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/PreviewEffectState;->sInstance:Lcom/android/phone/PreviewEffectState;

    .line 61
    :goto_0
    sget-object v0, Lcom/android/phone/PreviewEffectState;->sInstance:Lcom/android/phone/PreviewEffectState;

    monitor-exit v1

    return-object v0

    .line 59
    :cond_0
    const-string v0, "PreviewEffectState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PreviewEffectState;->sInstance:Lcom/android/phone/PreviewEffectState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 133
    const-string v0, "PreviewEffectState"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 137
    const-string v0, "PreviewEffectState"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 138
    return-void
.end method


# virtual methods
.method public isDualCameraEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsDualCameraEnabled:Z

    return v0
.end method

.method public isEmotionalAniAuto()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsEmotionalAniAuto:Z

    return v0
.end method

.method public isShowingCartoonView()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingCartoonView:Z

    return v0
.end method

.method public isShowingEffectLayout()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/phone/PreviewEffectState;->isShowingEmotionalAni()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PreviewEffectState;->isShowingThemeView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingEmotionalAni()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingEmotionalAni:Z

    return v0
.end method

.method public isShowingThemeView()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingThemeView:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingEmotionalAni:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsEmotionalAniAuto:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingThemeView:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingCartoonView:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/phone/PreviewEffectState;->mIsDualCameraEnabled:Z

    .line 108
    return-void
.end method

.method protected setDualCameraEnable(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/phone/PreviewEffectState;->mIsDualCameraEnabled:Z

    .line 128
    return-void
.end method

.method protected setEmotionalAniAuto(Z)V
    .locals 0
    .parameter "isAuto"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/phone/PreviewEffectState;->mIsEmotionalAniAuto:Z

    .line 116
    return-void
.end method

.method protected setShowCartoonView(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingCartoonView:Z

    .line 124
    return-void
.end method

.method protected setShowEmotionalAni(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingEmotionalAni:Z

    .line 112
    return-void
.end method

.method protected setShowThemeView(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/phone/PreviewEffectState;->mIsShowingThemeView:Z

    .line 120
    return-void
.end method
