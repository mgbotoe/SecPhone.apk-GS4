.class Lcom/android/phone/NetworkModePreference$7$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModePreference$7;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference$7;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$7$2;->this$1:Lcom/android/phone/NetworkModePreference$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$7$2;->this$1:Lcom/android/phone/NetworkModePreference$7;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$7;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->changeDataService()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)V

    .line 731
    return-void
.end method
