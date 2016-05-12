.class public Lretrofit/mime/TypedFile;
.super Ljava/lang/Object;
.source "TypedFile.java"

# interfaces
.implements Lretrofit/mime/TypedInput;
.implements Lretrofit/mime/TypedOutput;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final file:Ljava/io/File;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lretrofit/mime/TypedFile;->mimeType:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    .line 106
    :cond_0
    instance-of v1, p1, Lretrofit/mime/TypedFile;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 107
    check-cast v0, Lretrofit/mime/TypedFile;

    .line 108
    .local v0, "rhs":Lretrofit/mime/TypedFile;
    iget-object v1, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    iget-object v2, v0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 110
    .end local v0    # "rhs":Lretrofit/mime/TypedFile;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public file()Ljava/io/File;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lretrofit/mime/TypedFile;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public moveTo(Lretrofit/mime/TypedFile;)V
    .locals 2
    .param p1, "destination"    # Lretrofit/mime/TypedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lretrofit/mime/TypedFile;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/mime/TypedFile;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Type mismatch."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Lretrofit/mime/TypedFile;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Rename failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lretrofit/mime/TypedFile;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 74
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lretrofit/mime/TypedFile;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v1, "in":Ljava/io/FileInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v2    # "read":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3

    .restart local v2    # "read":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 83
    return-void
.end method
