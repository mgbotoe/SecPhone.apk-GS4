.class Lcom/android/phone/AcceptOrRejectCallsDialog$3;
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
    .line 173
    iput-object p1, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$3;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/AcceptOrRejectCallsDialog$3;->this$0:Lcom/android/phone/AcceptOrRejectCallsDialog;

    #getter for: Lcom/android/phone/AcceptOrRejectCallsDialog;->mAnimationDrawableList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/phone/AcceptOrRejectCallsDialog;->access$400(Lcom/android/phone/AcceptOrRejectCallsDialog;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 176
    return-void
.end method
