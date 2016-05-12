.class final Lcom/samsung/milk/milkvideo/models/User$1;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/models/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/milk/milkvideo/models/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/milk/milkvideo/models/User;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    new-instance v0, Lcom/samsung/milk/milkvideo/models/User;

    invoke-direct {v0, p1}, Lcom/samsung/milk/milkvideo/models/User;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/models/User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/milk/milkvideo/models/User;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 20
    new-array v0, p1, [Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/models/User$1;->newArray(I)[Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    return-object v0
.end method
