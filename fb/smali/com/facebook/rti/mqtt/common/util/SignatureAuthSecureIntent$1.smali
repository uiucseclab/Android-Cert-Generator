.class final Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;
.super Ljava/util/ArrayList;
.source "suppressing close error"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const-string v0, "com.facebook.orca"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "com.facebook.katana"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "com.facebook.wakizashi"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "com.instagram.android"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "com.facebook.services"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method
