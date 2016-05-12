.class final Lcom/facebook/soloader/ExoSoSource$FileDso;
.super Lcom/facebook/soloader/UnpackingSoSource$Dso;
.source "open"


# instance fields
.field final a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-object p3, p0, Lcom/facebook/soloader/ExoSoSource$FileDso;->a:Ljava/io/File;

    .line 159
    return-void
.end method
