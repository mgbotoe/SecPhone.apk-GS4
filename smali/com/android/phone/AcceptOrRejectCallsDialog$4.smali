.class Lcom/android/phone/AcceptOrRejectCallsDialog$4;
.super Ljava/lang/Object;
.source "AcceptOrRejectCallsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AcceptOrRejectCallsDialog;->startAnimationForAcceptOrRejectCallsImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/AcceptOrRejectCallsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$4;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$4;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$400(Lcom/android/phone/AcceptOrRejectCallsDialog;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 182
    return-void
.end method
