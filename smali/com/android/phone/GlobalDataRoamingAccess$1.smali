.class Lcom/android/phone/GlobalDataRoamingAccess$1;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$1;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess$1;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->setOneTripState(Landroid/telephony/ServiceState;)V

    .line 267
    return-void
.end method
