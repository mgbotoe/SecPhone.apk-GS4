.class Lcom/android/phone/CallNotifier$5;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;Z)V

    .line 1180
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;Z)V

    .line 1175
    return-void
.end method
