.class Lcom/android/phone/CallCardCovered$3;
.super Ljava/lang/Object;
.source "CallCardCovered.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCardCovered;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCardCovered;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCardCovered;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/phone/CallCardCovered$3;->this$0:Lcom/android/phone/CallCardCovered;

    #getter for: Lcom/android/phone/CallCardCovered;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/CallCardCovered;->access$1000(Lcom/android/phone/CallCardCovered;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 517
    return-void
.end method
