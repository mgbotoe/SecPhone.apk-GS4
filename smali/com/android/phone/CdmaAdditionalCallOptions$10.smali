.class Lcom/android/phone/CdmaAdditionalCallOptions$10;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enhancedVoicePrivacy:Z

.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 1
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 804
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    return-void

    .line 806
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    goto :goto_0

    .line 809
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
