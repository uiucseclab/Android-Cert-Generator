.class public Lcom/facebook/common/file/FileUtils$RenameException;
.super Ljava/io/IOException;
.source "token_key"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/facebook/common/file/FileUtils$RenameException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 125
    return-void
.end method
