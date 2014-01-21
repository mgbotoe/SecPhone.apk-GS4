.class public Lcom/android/phone/AirMotionTutorialIncallScreen;
.super Landroid/app/Activity;
.source "AirMotionTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/CallAirMotionListener;
.implements Lcom/android/phone/IncomingCallWidget$OnTriggerListener;


# instance fields
.field airMotionWidget:Lcom/android/phone/IncomingCallWidget;

.field beforeMotion:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBtnContainer:Landroid/widget/FrameLayout;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mCallAirMotion:Lcom/android/phone/CallAirMotion;

.field private mCompleteText:Landroid/widget/FrameLayout;

.field private mEndButton:Landroid/widget/Button;

.field private mGuideText:Landroid/widget/FrameLayout;

.field mHandler:Landroid/os/Handler;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectwithmsg:Landroid/widget/LinearLayout;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mTutorialLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->beforeMotion:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 75
    new-instance v0, Lcom/android/phone/AirMotionTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AirMotionTutorialIncallScreen$1;-><init>(Lcom/android/phone/AirMotionTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AirMotionTutorialIncallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->displayToast(I)V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7f050002

    .line 169
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    .line 170
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 171
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    .line 172
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 174
    :cond_1
    return-void
.end method

.method private displayToast(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 237
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 238
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 246
    const-string v0, "AirMotionTutorialIncallScreen"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 247
    return-void
.end method


# virtual methods
.method public goCallConnected()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v3, v4}, Lcom/android/phone/IncomingCallWidget;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectwithmsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "voice_call_recording_menu"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 205
    .local v0, shouldSpeakerOn:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v2, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    return-void

    .line 199
    .end local v0           #shouldSpeakerOn:Z
    :cond_0
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 203
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0a001a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->setContentView(I)V

    .line 92
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingCallWidget;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/phone/IncomingCallWidget;

    .line 93
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    .line 94
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 95
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    .line 96
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    .line 97
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectwithmsg:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    .line 101
    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020438

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :cond_0
    :goto_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    :goto_1
    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 119
    new-instance v0, Lcom/android/phone/CallAirMotion;

    invoke-direct {v0, p0}, Lcom/android/phone/CallAirMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 120
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallAirMotion;->setCallAirMotionListener(Lcom/android/phone/CallAirMotionListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingCallWidget;->setOnTriggerListener(Lcom/android/phone/IncomingCallWidget$OnTriggerListener;)V

    .line 123
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    .line 124
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/phone/AirMotionTutorialIncallScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/AirMotionTutorialIncallScreen$2;-><init>(Lcom/android/phone/AirMotionTutorialIncallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->animationInit(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void

    .line 104
    :cond_1
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v4}, Lcom/android/phone/AirMotionTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f020437

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "onDestroy"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->stopMotionCatch()V

    .line 161
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->unbindFromService()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 219
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "onPause - stopMotionCatch"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->stopMotionCatch()V

    .line 154
    :cond_0
    return-void
.end method

.method public onReceiveSweep(I)V
    .locals 2
    .parameter "sweepStep"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/phone/IncomingCallWidget;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sweepStep  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    .line 179
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/phone/IncomingCallWidget;

    invoke-virtual {v0, p1}, Lcom/android/phone/IncomingCallWidget;->startAirMotionAnimation(I)V

    .line 181
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->stopMotionCatch()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->beforeMotion:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->goCallConnected()V

    .line 189
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->beforeMotion:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "onResume - beforeMotion"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/phone/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/phone/CallAirMotion;->startMotionCatch()V

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "whichHandle"

    .prologue
    const v0, 0x7f090346

    .line 224
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 226
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->displayToast(I)V

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/phone/AirMotionTutorialIncallScreen;->displayToast(I)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
