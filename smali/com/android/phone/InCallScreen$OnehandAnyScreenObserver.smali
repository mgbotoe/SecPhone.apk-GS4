.class Lcom/android/phone/InCallScreen$OnehandAnyScreenObserver;
.super Landroid/database/ContentObserver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnehandAnyScreenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 12756
    iput-object p1, p0, Lcom/android/phone/InCallScreen$OnehandAnyScreenObserver;->this$0:Lcom/android/phone/InCallScreen;

    .line 12757
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12758
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 12760
    iget-object v0, p0, Lcom/android/phone/InCallScreen$OnehandAnyScreenObserver;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 12761
    return-void
.end method
