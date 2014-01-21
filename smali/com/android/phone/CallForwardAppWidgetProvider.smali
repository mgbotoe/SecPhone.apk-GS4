.class public Lcom/android/phone/CallForwardAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CallForwardAppWidgetProvider.java"

# interfaces
.implements Lcom/android/phone/CallForwardingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardAppWidgetProvider$1;,
        Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field static callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field static cfListener:Lcom/android/phone/CallForwardingListener;

.field static mIsReading:Z

.field static mIsVideoOn:Lcom/android/phone/CFStatus;

.field static mIsVoiceOn:Lcom/android/phone/CFStatus;

.field static mLastRequestType:Lcom/android/phone/CFType;

.field static mScreenMode:I

.field static mVideoNumber:Ljava/lang/String;

.field static mVoiceNumber:Ljava/lang/String;

.field static phone:Lcom/android/internal/telephony/Phone;


# instance fields
.field context:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallForwardAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 105
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 106
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 109
    sput-boolean v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 112
    sput v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 96
    new-instance v0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V

    iput-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    .line 471
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 5
    .parameter "type"
    .parameter "cf"

    .prologue
    const v4, 0x7f090337

    const/4 v3, 0x1

    .line 229
    sput-object p2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 230
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "handleCallForwardResult done: "

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 231
    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callForwardInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 233
    sget-object v0, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_4

    .line 234
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 235
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_2

    .line 236
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 240
    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 258
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 259
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 260
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 265
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 266
    return-void

    .line 238
    :cond_2
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    goto :goto_0

    .line 242
    :cond_3
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    .line 243
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    goto :goto_1

    .line 245
    :cond_4
    sget-object v0, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    if-ne p1, v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 247
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v3, :cond_5

    .line 248
    sget-object v0, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 252
    :goto_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_5
    sget-object v0, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    goto :goto_3

    .line 254
    :cond_6
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 255
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_1

    .line 261
    :cond_7
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 262
    sget-object v0, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    .line 263
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 127
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 134
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 136
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 142
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 146
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 147
    sput-object p0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    .line 150
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 155
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v1, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 458
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 460
    return-void
.end method

.method public onException(Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 463
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 464
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 465
    return-void
.end method

.method public onFinished(Z)V
    .locals 1
    .parameter "reading"

    .prologue
    .line 451
    sput-boolean p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 452
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 455
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 165
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, intentAction:Ljava/lang/String;
    const-string v0, "CallForwardAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, intentAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 172
    const-string v0, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VOICE_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 178
    .local v1, action:I
    :cond_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 185
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    .line 226
    .end local v1           #action:I
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string v0, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_VIDEO_CF_ONOFF_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v3, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v3, :cond_3

    move v1, v2

    .line 194
    .restart local v1       #action:I
    :cond_3
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    const/16 v5, 0x10

    iget-object v4, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    invoke-virtual {v4, v6, v1, v6}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 202
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v3, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v3, v2}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    .line 205
    .end local v1           #action:I
    :cond_4
    const-string v0, "com.android.phone.cfwidget.widget_reload_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_RELOAD_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->mHandler:Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v2, v4}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 214
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    sget-object v2, Lcom/android/phone/CFType;->VOICE_AND_VIDEO:Lcom/android/phone/CFType;

    invoke-interface {v0, v2, v6}, Lcom/android/phone/CallForwardingListener;->onStarted(Lcom/android/phone/CFType;Z)V

    goto :goto_0

    .line 217
    :cond_5
    const-string v0, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v3, "onReceive(): WIDGET_BACK_SCREEN_ACTION"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sput v2, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 220
    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_0

    .line 221
    :cond_6
    const-string v0, "com.android.phone.cfwidget.widget_handle_mmi_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "CallForwardAppWidgetProvider"

    const-string v2, "onReceive(): WIDGET_HANDLE_MMI_ACTION"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sput v1, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 224
    invoke-virtual {p0, p1, v5}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onStarted(Lcom/android/phone/CFType;Z)V
    .locals 2
    .parameter "type"
    .parameter "reading"

    .prologue
    .line 444
    sput-boolean p2, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    .line 445
    sput-object p1, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    .line 446
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    .line 447
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 448
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    .line 117
    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    array-length v0, p3

    .line 120
    .local v0, N:I
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 121
    return-void
.end method

.method updateToggleButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "views"

    .prologue
    const v6, 0x7f0a00aa

    const v5, 0x7f0a00a9

    const v2, 0x7f0a00a8

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 410
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_0

    .line 411
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 412
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 414
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 415
    const v0, 0x7f0a00ac

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 416
    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 426
    :goto_0
    sget-object v0, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v1, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    if-ne v0, v1, :cond_1

    .line 427
    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 428
    const v0, 0x7f0a00b1

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    const v0, 0x7f0a00b2

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 431
    const v0, 0x7f0a00b4

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 432
    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 441
    :goto_1
    return-void

    .line 418
    :cond_0
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 419
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 422
    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 423
    const v0, 0x7f0a00ac

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 434
    :cond_1
    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 435
    const v0, 0x7f0a00b1

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    const v0, 0x7f0a00b2

    iget-object v1, p0, Lcom/android/phone/CallForwardAppWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 438
    const v0, 0x7f0a00b4

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 439
    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method updateView(Landroid/content/Context;I)V
    .locals 23
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 270
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f040015

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 273
    .local v17, views:Landroid/widget/RemoteViews;
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v13, settingIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 278
    .local v9, pendingSettingIntent:Landroid/app/PendingIntent;
    const v20, 0x7f0a00a5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 281
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_voice_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 284
    .local v18, voiceCfOnOff:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v12, setVoiceNumberIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 290
    .local v8, pendingSetVoiceNumberIntent:Landroid/app/PendingIntent;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 291
    const v20, 0x7f0a00a7

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 297
    :goto_0
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_video_cf_onoff_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 300
    .local v16, videoCfOnOff:Landroid/app/PendingIntent;
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v11, setVideoNumberIntent:Landroid/content/Intent;
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    const-string v20, "com.android.phone"

    const-string v21, "com.android.phone.GsmUmtsVideoCallForwardOptionsFromWidget"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v20, "FROMWIDGET"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 306
    .local v7, pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 307
    const v20, 0x7f0a00af

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 313
    :goto_1
    sget v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mScreenMode:I

    packed-switch v20, :pswitch_data_0

    .line 404
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v19

    .line 405
    .local v19, wm:Landroid/appwidget/AppWidgetManager;
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 406
    return-void

    .line 293
    .end local v7           #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .end local v11           #setVideoNumberIntent:Landroid/content/Intent;
    .end local v16           #videoCfOnOff:Landroid/app/PendingIntent;
    .end local v19           #wm:Landroid/appwidget/AppWidgetManager;
    :cond_0
    const v20, 0x7f0a00a7

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 309
    .restart local v7       #pendingSetVideoNumberIntent:Landroid/app/PendingIntent;
    .restart local v11       #setVideoNumberIntent:Landroid/content/Intent;
    .restart local v16       #videoCfOnOff:Landroid/app/PendingIntent;
    :cond_1
    const v20, 0x7f0a00af

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 315
    :pswitch_0
    const v20, 0x7f0a00a6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    const v20, 0x7f0a00b6

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 320
    const v20, 0x7f090337

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    .line 323
    :cond_2
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->NUM_NOT_SET:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 324
    const v20, 0x7f090337

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    .line 327
    :cond_3
    const v20, 0x7f0a00ab

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVoiceNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 328
    const v20, 0x7f0a00b3

    sget-object v21, Lcom/android/phone/CallForwardAppWidgetProvider;->mVideoNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardAppWidgetProvider;->updateToggleButton(Landroid/widget/RemoteViews;)V

    goto/16 :goto_2

    .line 334
    :pswitch_1
    const v20, 0x7f0a00a6

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    const v20, 0x7f0a00b6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 336
    const v20, 0x7f0a00b7

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 337
    const v20, 0x7f0a00ba

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 338
    const v20, 0x7f0a00bc

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 339
    const v20, 0x7f0a00be

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 342
    const v20, 0x7f090076

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, dialogText:Ljava/lang/String;
    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-nez v20, :cond_4

    .line 344
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 345
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 346
    const v20, 0x7f090339

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 358
    :cond_4
    :goto_3
    const v20, 0x7f0a00b9

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 347
    :cond_5
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVoiceOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 348
    const v20, 0x7f090338

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 350
    :cond_6
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mLastRequestType:Lcom/android/phone/CFType;

    sget-object v21, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 351
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->ON:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 352
    const v20, 0x7f09033b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 353
    :cond_7
    sget-object v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsVideoOn:Lcom/android/phone/CFStatus;

    sget-object v21, Lcom/android/phone/CFStatus;->OFF:Lcom/android/phone/CFStatus;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 354
    const v20, 0x7f09033a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 362
    .end local v5           #dialogText:Ljava/lang/String;
    :pswitch_2
    const v20, 0x7f0a00a6

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 363
    const v20, 0x7f0a00b6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const v20, 0x7f0a00b7

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 365
    const v20, 0x7f0a00ba

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 366
    const v20, 0x7f0a00bc

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 369
    sget-boolean v20, Lcom/android/phone/CallForwardAppWidgetProvider;->mIsReading:Z

    if-eqz v20, :cond_8

    .line 370
    const v20, 0x7f09033c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 371
    .local v14, tryAgain:Ljava/lang/String;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 375
    .local v10, reloadCf:Landroid/app/PendingIntent;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 384
    .end local v10           #reloadCf:Landroid/app/PendingIntent;
    .end local v14           #tryAgain:Ljava/lang/String;
    :goto_4
    const v20, 0x7f0a00be

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 377
    :cond_8
    const v20, 0x7f09007d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, ok:Ljava/lang/String;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 380
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_back_screen_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 382
    .local v4, backScreen:Landroid/app/PendingIntent;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_4

    .line 388
    .end local v4           #backScreen:Landroid/app/PendingIntent;
    .end local v6           #ok:Ljava/lang/String;
    :pswitch_3
    const v20, 0x7f0a00a6

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 389
    const v20, 0x7f0a00b6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 390
    const v20, 0x7f0a00b7

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 391
    const v20, 0x7f0a00ba

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 392
    const v20, 0x7f0a00bc

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 394
    const v20, 0x7f09033d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 395
    .local v15, update:Ljava/lang/String;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 397
    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 399
    .restart local v10       #reloadCf:Landroid/app/PendingIntent;
    const v20, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 400
    const v20, 0x7f0a00be

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
