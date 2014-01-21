.class final Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;
.super Ljava/lang/Object;
.source "SprintPhoneExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SprintPhoneExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RejectCallWithMessagePendingList"
.end annotation


# instance fields
.field public phoneNumber:Ljava/lang/String;

.field public presetMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_phoneNumber"
    .parameter "_presetMessage"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->phoneNumber:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->presetMessage:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPresetMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->presetMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " presetMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->presetMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
