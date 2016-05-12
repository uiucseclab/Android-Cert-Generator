.class public Lcom/facebook/common/soloader/SoLoaderShim;
.super Ljava/lang/Object;
.source "video_album_permalink_enter"


# static fields
.field private static volatile a:Lcom/facebook/common/soloader/SoLoaderShim$Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;

    invoke-direct {v0}, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;-><init>()V

    sput-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->a:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Lcom/facebook/common/soloader/SoLoaderShim$Handler;)V
    .locals 2

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    sput-object p0, Lcom/facebook/common/soloader/SoLoaderShim;->a:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->a:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    invoke-interface {v0, p0}, Lcom/facebook/common/soloader/SoLoaderShim$Handler;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
