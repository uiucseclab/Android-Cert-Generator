.class public Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;
.super Ljava/lang/Object;
.source "video_album_permalink_enter"

# interfaces
.implements Lcom/facebook/common/soloader/SoLoaderShim$Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method
