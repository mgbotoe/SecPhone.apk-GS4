.class Lcom/android/phone/EmergencyDialer$5;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1665
    if-nez p2, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$302(Lcom/android/phone/EmergencyDialer;I)I

    .line 1667
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)V

    .line 1672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$302(Lcom/android/phone/EmergencyDialer;I)I

    .line 1673
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1674
    return-void

    .line 1668
    :cond_1
    if-ne p2, v1, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/EmergencyDialer;->mSimNum:I
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$302(Lcom/android/phone/EmergencyDialer;I)I

    .line 1670
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    #calls: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$400(Lcom/android/phone/EmergencyDialer;)V

    goto :goto_0
.end method
