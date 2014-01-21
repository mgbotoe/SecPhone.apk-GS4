.class Lcom/android/phone/InCallScreen$33;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7498
    iput-object p1, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7501
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnsweringMemoRecorder.isVoiceRecording() - with delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, v2, Lcom/android/phone/InCallScreen;->mAnsweringMemoRecorder:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-virtual {v2}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7502
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mAnsweringMemoRecorder:Lcom/android/phone/AnsweringMemoRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mAnsweringMemoRecorder:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7503
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mAnsweringMemoRecorder:Lcom/android/phone/AnsweringMemoRecorder;

    invoke-virtual {v0}, Lcom/android/phone/AnsweringMemoRecorder;->stopRecord()V

    .line 7504
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7505
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->setAutoAnsweringMode(Lcom/android/phone/PhoneGlobals;Z)V

    .line 7507
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->stopGuidance()V

    .line 7508
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7509
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->clearAnswerMemoImageView()V

    .line 7510
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallCard;->setAutoAnswered(Z)V

    .line 7511
    iget-object v0, p0, Lcom/android/phone/InCallScreen$33;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/CallCard;->setGuidanceMsgPlaying(Z)V

    .line 7514
    :cond_1
    return-void
.end method
