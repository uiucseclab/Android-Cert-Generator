.class public final Lcom/facebook/soloader/ExoSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "open"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;-><init>(Lcom/facebook/soloader/ExoSoSource;)V

    return-object v0
.end method
