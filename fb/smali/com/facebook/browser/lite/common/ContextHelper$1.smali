.class final Lcom/facebook/browser/lite/common/ContextHelper$1;
.super Ljava/util/HashSet;
.source "prog-"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 24
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/common/ContextHelper$1;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/common/ContextHelper$1;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v0, "com.google.market"

    invoke-virtual {p0, v0}, Lcom/facebook/browser/lite/common/ContextHelper$1;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
