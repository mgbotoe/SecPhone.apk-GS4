.class Lcom/android/phone/callsettings/InCallSoundEQPreference$3;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    return-void
.end method
