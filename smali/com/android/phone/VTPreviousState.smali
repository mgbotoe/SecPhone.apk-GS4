.class public Lcom/android/phone/VTPreviousState;
.super Ljava/lang/Object;
.source "VTPreviousState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/VTPreviousState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsSpeakerOn:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/phone/VTPreviousState$1;

    invoke-direct {v0}, Lcom/android/phone/VTPreviousState$1;-><init>()V

    sput-object v0, Lcom/android/phone/VTPreviousState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter "speakerOn"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-byte p1, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeakerOn()B
    .locals 1

    .prologue
    .line 10
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 28
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    return-void
.end method
