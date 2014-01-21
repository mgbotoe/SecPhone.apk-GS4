.class public Lcom/android/phone/CallCardCoveredDialog;
.super Ljava/lang/Object;
.source "CallCardCoveredDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;
    }
.end annotation


# instance fields
.field private mCallCardCovered:Lcom/android/phone/CallCardCovered;

.field private mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;-><init>(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCardCoveredDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/CallCardCoveredDialog;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/CallCardCovered;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CallCardCoveredDialog;Lcom/android/phone/CallCardCovered;)Lcom/android/phone/CallCardCovered;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallCardCoveredDialog;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method


# virtual methods
.method public clearAnswerMemoImageView()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->clearAnswerMemoImageView()V

    .line 254
    return-void
.end method

.method public dismissDialog()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/CallCardCoveredDialog;->stopHandlerOfUi()V

    .line 196
    iget-object v1, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v1}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->dismiss()V

    .line 197
    const-string v1, "CallCardCoveredDialog"

    const-string v2, "clearcover popup is dismissed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method invisibleMemoRecInfoView()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->invisibleMemoRecInfoView()V

    .line 265
    return-void
.end method

.method public setAutoAnswered(Z)V
    .locals 1
    .parameter "autoAnswered"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->setAutoAnswered(Z)V

    .line 258
    return-void
.end method

.method public setCallCardCoveredBackgound()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->setCallCardCoveredBackgound()V

    .line 221
    :cond_0
    return-void
.end method

.method public setCoverScreenTime(Z)V
    .locals 9
    .parameter "isDialing"

    .prologue
    const-wide/16 v7, 0x1f40

    const-wide/16 v5, 0x1770

    const-wide/16 v3, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 159
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, currentTimeOutSetValue:I
    const-string v2, "samsung_screen_timeout_incall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const-wide/16 v2, 0x7530

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 166
    const-wide/16 v2, 0x4e20

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 189
    .end local v0           #currentTimeOutSetValue:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    return-void

    .line 168
    .restart local v0       #currentTimeOutSetValue:I
    :cond_0
    int-to-long v2, v0

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    .line 171
    .end local v0           #currentTimeOutSetValue:I
    :cond_1
    const-string v2, "samsung_screen_timeout_incall"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iput-wide v5, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 174
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 176
    :cond_2
    iput-wide v7, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 177
    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 180
    :cond_3
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    iput-wide v5, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 182
    iput-wide v3, v1, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0

    .line 184
    :cond_4
    iput-wide v7, v1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method

.method public setGuidanceMsgPlaying(Z)V
    .locals 1
    .parameter "isGuidance"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->setAutoAnswered(Z)V

    .line 262
    return-void
.end method

.method public showDialog(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V
    .locals 7
    .parameter "context"
    .parameter "inCallScreen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 104
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    iput-object p2, p0, Lcom/android/phone/CallCardCoveredDialog;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 106
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v2, p2}, Lcom/android/phone/CallCardCovered;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 107
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x832

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 108
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x400

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    const/high16 v0, 0x28

    .line 113
    .local v0, flags:I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 114
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 118
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/phone/CallCardCoveredDialog;->setCoverScreenTime(Z)V

    .line 123
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 125
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 128
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 129
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 131
    const-string v2, "clear_cover_enhanced"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/CallCardCoveredDialog;->setCallCardCoveredBackgound()V

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mClearCoverDialog:Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;

    invoke-virtual {v2}, Lcom/android/phone/CallCardCoveredDialog$ClearCoverDialog;->show()V

    .line 135
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lcom/android/phone/CallCardCovered;->disableCoverLockUI(I)V

    .line 138
    iget-object v2, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    new-instance v3, Lcom/android/phone/CallCardCoveredDialog$2;

    invoke-direct {v3, p0}, Lcom/android/phone/CallCardCoveredDialog$2;-><init>(Lcom/android/phone/CallCardCoveredDialog;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/CallCardCovered;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    const-string v2, "CallCardCoveredDialog"

    const-string v3, "clearcover popup is showed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 151
    .end local v0           #flags:I
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method public stopHandlerOfUi()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->stopTimer()V

    .line 215
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->stopCallCardAnimation()V

    .line 216
    return-void
.end method

.method updateMemoRecordTime()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0}, Lcom/android/phone/CallCardCovered;->updateMemoRecordTime()V

    .line 269
    return-void
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "callManager"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/phone/CallCardCoveredDialog;->mCallCardCovered:Lcom/android/phone/CallCardCovered;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCardCovered;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 206
    return-void
.end method
