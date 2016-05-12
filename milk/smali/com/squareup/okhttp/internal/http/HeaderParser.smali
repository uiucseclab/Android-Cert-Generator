.class public final Lcom/squareup/okhttp/internal/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 55
    .local v1, "seconds":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 56
    const v3, 0x7fffffff

    .line 63
    .end local v1    # "seconds":J
    :goto_0
    return v3

    .line 57
    .restart local v1    # "seconds":J
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 58
    const/4 v3, 0x0

    goto :goto_0

    .line 60
    :cond_1
    long-to-int v3, v1

    goto :goto_0

    .line 62
    .end local v1    # "seconds":J
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 31
    :cond_0
    return p1

    .line 26
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 41
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 45
    .end local v0    # "c":C
    :cond_0
    return p1

    .line 39
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
