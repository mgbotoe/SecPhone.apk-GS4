.class public Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;
.super Ljava/lang/Object;
.source "IpNumberDeleteCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDeleteCdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteItem"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field private checked:Z

.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem$1;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 312
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "number"
    .parameter "checked"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->this$0:Lcom/android/phone/callsettings/IpNumberDeleteCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem$1;-><init>(Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 315
    iput-object p2, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->number:Ljava/lang/String;

    .line 316
    iput-boolean p3, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->checked:Z

    .line 317
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->number:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->checked:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "_checked"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->checked:Z

    .line 333
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDeleteCdma$DeleteItem;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    return-void
.end method
