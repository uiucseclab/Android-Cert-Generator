.class final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final length:I

.field private final next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    .line 728
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 729
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    .line 730
    return-void

    .line 729
    :cond_0
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 720
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    return v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public has([CII)Ljava/lang/String;
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 733
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-object v1

    .line 736
    :cond_1
    const/4 v0, 0x0

    .line 738
    .local v0, "i":I
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v0

    aget-char v3, p1, v3

    if-ne v2, v3, :cond_0

    .line 741
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_2

    .line 742
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    goto :goto_0
.end method
