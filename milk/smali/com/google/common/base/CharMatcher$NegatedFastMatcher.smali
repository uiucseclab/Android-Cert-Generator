.class Lcom/google/common/base/CharMatcher$NegatedFastMatcher;
.super Lcom/google/common/base/CharMatcher$NegatedMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .locals 0
    .param p1, "original"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Lcom/google/common/base/CharMatcher;)V

    .line 843
    return-void
.end method


# virtual methods
.method public final precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 847
    return-object p0
.end method
