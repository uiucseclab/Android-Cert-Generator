.class final Lretrofit/mime/MultipartTypedOutput$MimePart;
.super Ljava/lang/Object;
.source "MultipartTypedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/mime/MultipartTypedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MimePart"
.end annotation


# instance fields
.field private final body:Lretrofit/mime/TypedOutput;

.field private final boundary:Ljava/lang/String;

.field private isBuilt:Z

.field private final isFirst:Z

.field private final name:Ljava/lang/String;

.field private partBoundary:[B

.field private partHeader:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lretrofit/mime/TypedOutput;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lretrofit/mime/TypedOutput;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "isFirst"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->body:Lretrofit/mime/TypedOutput;

    .line 42
    iput-boolean p4, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->isFirst:Z

    .line 43
    iput-object p3, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->boundary:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private build()V
    .locals 3

    .prologue
    .line 63
    iget-boolean v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->boundary:Ljava/lang/String;

    iget-boolean v1, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->isFirst:Z

    const/4 v2, 0x0

    # invokes: Lretrofit/mime/MultipartTypedOutput;->buildBoundary(Ljava/lang/String;ZZ)[B
    invoke-static {v0, v1, v2}, Lretrofit/mime/MultipartTypedOutput;->access$000(Ljava/lang/String;ZZ)[B

    move-result-object v0

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partBoundary:[B

    .line 65
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->name:Ljava/lang/String;

    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->body:Lretrofit/mime/TypedOutput;

    # invokes: Lretrofit/mime/MultipartTypedOutput;->buildHeader(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B
    invoke-static {v0, v1}, Lretrofit/mime/MultipartTypedOutput;->access$100(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B

    move-result-object v0

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partHeader:[B

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->isBuilt:Z

    goto :goto_0
.end method


# virtual methods
.method public size()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 54
    invoke-direct {p0}, Lretrofit/mime/MultipartTypedOutput$MimePart;->build()V

    .line 55
    iget-object v2, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->body:Lretrofit/mime/TypedOutput;

    invoke-interface {v2}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 56
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->body:Lretrofit/mime/TypedOutput;

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v0

    iget-object v2, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partBoundary:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partHeader:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 58
    :cond_0
    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lretrofit/mime/MultipartTypedOutput$MimePart;->build()V

    .line 48
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partBoundary:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 49
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->partHeader:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 50
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput$MimePart;->body:Lretrofit/mime/TypedOutput;

    invoke-interface {v0, p1}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method
