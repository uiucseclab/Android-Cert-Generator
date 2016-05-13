.class public Lcom/facebook/acra/util/HttpRequest$StringPostEntity;
.super Ljava/lang/Object;
.source "reason"

# interfaces
.implements Lcom/facebook/acra/util/HttpRequest$PostEntity;


# instance fields
.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/acra/util/HttpRequest$StringPostEntity;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 76
    return-void
.end method
