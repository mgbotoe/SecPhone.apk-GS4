.class Lcom/android/phone/InCallSoundEQListPreference$1;
.super Ljava/lang/Object;
.source "InCallSoundEQListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSoundEQListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSoundEQListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSoundEQListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/InCallSoundEQListPreference$1;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference$1;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    #calls: Lcom/android/phone/InCallSoundEQListPreference;->goMySound()V
    invoke-static {v0}, Lcom/android/phone/InCallSoundEQListPreference;->access$000(Lcom/android/phone/InCallSoundEQListPreference;)V

    .line 94
    return-void
.end method
