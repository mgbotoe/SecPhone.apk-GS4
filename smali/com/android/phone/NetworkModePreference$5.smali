.class Lcom/android/phone/NetworkModePreference$5;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$5;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 714
    const-string v0, "NetworkModePreference"

    const-string v1, "No change data service network"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method
