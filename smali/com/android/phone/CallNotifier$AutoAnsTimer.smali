.class Lcom/android/phone/CallNotifier$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 7224
    iput-object p1, p0, Lcom/android/phone/CallNotifier$AutoAnsTimer;->this$0:Lcom/android/phone/CallNotifier;

    .line 7225
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 7226
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 7230
    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoAnsTimer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->answeringMode()V

    .line 7231
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 7235
    return-void
.end method
