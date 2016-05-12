.class Lcom/squareup/okhttp/internal/spdy/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    }
.end annotation


# static fields
.field private static final CODES:[I

.field private static final CODE_LENGTHS:[B

.field private static final INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;


# instance fields
.field private final root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    .line 79
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-void

    .line 35
    :array_0
    .array-data 4
        0x3ffffba
        0x3ffffbb
        0x3ffffbc
        0x3ffffbd
        0x3ffffbe
        0x3ffffbf
        0x3ffffc0
        0x3ffffc1
        0x3ffffc2
        0x3ffffc3
        0x3ffffc4
        0x3ffffc5
        0x3ffffc6
        0x3ffffc7
        0x3ffffc8
        0x3ffffc9
        0x3ffffca
        0x3ffffcb
        0x3ffffcc
        0x3ffffcd
        0x3ffffce
        0x3ffffcf
        0x3ffffd0
        0x3ffffd1
        0x3ffffd2
        0x3ffffd3
        0x3ffffd4
        0x3ffffd5
        0x3ffffd6
        0x3ffffd7
        0x3ffffd8
        0x3ffffd9
        0x6
        0x1ffc
        0x1f0
        0x3ffc
        0x7ffc
        0x1e
        0x64
        0x1ffd
        0x3fa
        0x1f1
        0x3fb
        0x3fc
        0x65
        0x66
        0x1f
        0x7
        0x0
        0x1
        0x2
        0x8
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0xec
        0x1fffc
        0x27
        0x7ffd
        0x3fd
        0x7ffe
        0x67
        0xed
        0xee
        0x68
        0xef
        0x69
        0x6a
        0x1f2
        0xf0
        0x1f3
        0x1f4
        0x1f5
        0x6b
        0x6c
        0xf1
        0xf2
        0x1f6
        0x1f7
        0x6d
        0x28
        0xf3
        0x1f8
        0x1f9
        0xf4
        0x1fa
        0x1fb
        0x7fc
        0x3ffffda
        0x7fd
        0x3ffd
        0x6e
        0x3fffe
        0x9
        0x6f
        0xa
        0x29
        0xb
        0x70
        0x2a
        0x2b
        0xc
        0xf5
        0xf6
        0x2c
        0x2d
        0x2e
        0xd
        0x2f
        0x1fc
        0x30
        0x31
        0xe
        0x71
        0x72
        0x73
        0x74
        0x75
        0xf7
        0x1fffd
        0xffc
        0x1fffe
        0xffd
        0x3ffffdb
        0x3ffffdc
        0x3ffffdd
        0x3ffffde
        0x3ffffdf
        0x3ffffe0
        0x3ffffe1
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x3ffffe5
        0x3ffffe6
        0x3ffffe7
        0x3ffffe8
        0x3ffffe9
        0x3ffffea
        0x3ffffeb
        0x3ffffec
        0x3ffffed
        0x3ffffee
        0x3ffffef
        0x3fffff0
        0x3fffff1
        0x3fffff2
        0x3fffff3
        0x3fffff4
        0x3fffff5
        0x3fffff6
        0x3fffff7
        0x3fffff8
        0x3fffff9
        0x3fffffa
        0x3fffffb
        0x3fffffc
        0x3fffffd
        0x3fffffe
        0x3ffffff
        0x1ffff80
        0x1ffff81
        0x1ffff82
        0x1ffff83
        0x1ffff84
        0x1ffff85
        0x1ffff86
        0x1ffff87
        0x1ffff88
        0x1ffff89
        0x1ffff8a
        0x1ffff8b
        0x1ffff8c
        0x1ffff8d
        0x1ffff8e
        0x1ffff8f
        0x1ffff90
        0x1ffff91
        0x1ffff92
        0x1ffff93
        0x1ffff94
        0x1ffff95
        0x1ffff96
        0x1ffff97
        0x1ffff98
        0x1ffff99
        0x1ffff9a
        0x1ffff9b
        0x1ffff9c
        0x1ffff9d
        0x1ffff9e
        0x1ffff9f
        0x1ffffa0
        0x1ffffa1
        0x1ffffa2
        0x1ffffa3
        0x1ffffa4
        0x1ffffa5
        0x1ffffa6
        0x1ffffa7
        0x1ffffa8
        0x1ffffa9
        0x1ffffaa
        0x1ffffab
        0x1ffffac
        0x1ffffad
        0x1ffffae
        0x1ffffaf
        0x1ffffb0
        0x1ffffb1
        0x1ffffb2
        0x1ffffb3
        0x1ffffb4
        0x1ffffb5
        0x1ffffb6
        0x1ffffb7
        0x1ffffb8
        0x1ffffb9
        0x1ffffba
        0x1ffffbb
        0x1ffffbc
        0x1ffffbd
        0x1ffffbe
        0x1ffffbf
        0x1ffffc0
        0x1ffffc1
        0x1ffffc2
        0x1ffffc3
        0x1ffffc4
        0x1ffffc5
        0x1ffffc6
        0x1ffffc7
        0x1ffffc8
        0x1ffffc9
        0x1ffffca
        0x1ffffcb
        0x1ffffcc
        0x1ffffcd
        0x1ffffce
        0x1ffffcf
        0x1ffffd0
        0x1ffffd1
        0x1ffffd2
        0x1ffffd3
        0x1ffffd4
        0x1ffffd5
        0x1ffffd6
        0x1ffffd7
        0x1ffffd8
        0x1ffffd9
        0x1ffffda
        0x1ffffdb
    .end array-data

    .line 65
    :array_1
    .array-data 1
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x5t
        0xdt
        0x9t
        0xet
        0xft
        0x6t
        0x7t
        0xdt
        0xat
        0x9t
        0xat
        0xat
        0x7t
        0x7t
        0x6t
        0x5t
        0x4t
        0x4t
        0x4t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x8t
        0x11t
        0x6t
        0xft
        0xat
        0xft
        0x7t
        0x8t
        0x8t
        0x7t
        0x8t
        0x7t
        0x7t
        0x9t
        0x8t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0x7t
        0x6t
        0x8t
        0x9t
        0x9t
        0x8t
        0x9t
        0x9t
        0xbt
        0x1at
        0xbt
        0xet
        0x7t
        0x12t
        0x5t
        0x7t
        0x5t
        0x6t
        0x5t
        0x7t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x9t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x11t
        0xct
        0x11t
        0xct
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Huffman;->buildTree()V

    .line 89
    return-void
.end method

.method private addCode(IIB)V
    .locals 8
    .param p1, "sym"    # I
    .param p2, "code"    # I
    .param p3, "len"    # B

    .prologue
    .line 173
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v5, p1, p3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>(II)V

    .line 175
    .local v5, "terminal":Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 176
    .local v0, "current":Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    :goto_0
    const/16 v6, 0x8

    if-le p3, v6, :cond_2

    .line 177
    add-int/lit8 v6, p3, -0x8

    int-to-byte p3, v6

    .line 178
    ushr-int v6, p2, p3

    and-int/lit16 v2, v6, 0xff

    .line 179
    .local v2, "i":I
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    if-nez v6, :cond_0

    .line 180
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "invalid dictionary: prefix not unique"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_0
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aget-object v6, v6, v2

    if-nez v6, :cond_1

    .line 183
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    new-instance v7, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v7}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    aput-object v7, v6, v2

    .line 185
    :cond_1
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aget-object v0, v6, v2

    .line 186
    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_2
    rsub-int/lit8 v3, p3, 0x8

    .line 189
    .local v3, "shift":I
    shl-int v6, p2, v3

    and-int/lit16 v4, v6, 0xff

    .line 190
    .local v4, "start":I
    const/4 v6, 0x1

    shl-int v1, v6, v3

    .line 191
    .local v1, "end":I
    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    add-int v6, v4, v1

    if-ge v2, v6, :cond_3

    .line 192
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v6

    aput-object v5, v6, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    :cond_3
    return-void
.end method

.method private buildTree()V
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 168
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    aget v1, v1, v0

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Huffman;->addCode(IIB)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public static get()Lcom/squareup/okhttp/internal/spdy/Huffman;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-object v0
.end method


# virtual methods
.method decode([B)[B
    .locals 8
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 131
    .local v6, "node":Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    const/4 v3, 0x0

    .line 132
    .local v3, "current":I
    const/4 v5, 0x0

    .line 133
    .local v5, "nbits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_3

    .line 134
    aget-byte v7, p1, v4

    and-int/lit16 v0, v7, 0xff

    .line 135
    .local v0, "b":I
    shl-int/lit8 v7, v3, 0x8

    or-int v3, v7, v0

    .line 136
    add-int/lit8 v5, v5, 0x8

    .line 137
    :goto_1
    const/16 v7, 0x8

    if-lt v5, v7, :cond_1

    .line 138
    add-int/lit8 v7, v5, -0x8

    ushr-int v7, v3, v7

    and-int/lit16 v2, v7, 0xff

    .line 139
    .local v2, "c":I
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    aget-object v6, v7, v2

    .line 140
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    if-nez v7, :cond_0

    .line 142
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->symbol:I
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$100(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 144
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    goto :goto_1

    .line 147
    :cond_0
    add-int/lit8 v5, v5, -0x8

    goto :goto_1

    .line 133
    .end local v2    # "c":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "b":I
    .restart local v2    # "c":I
    :cond_2
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->symbol:I
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$100(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 160
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->root:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 152
    .end local v2    # "c":I
    :cond_3
    if-lez v5, :cond_4

    .line 153
    rsub-int/lit8 v7, v5, 0x8

    shl-int v7, v3, v7

    and-int/lit16 v2, v7, 0xff

    .line 154
    .restart local v2    # "c":I
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    aget-object v6, v7, v2

    .line 155
    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$000(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v7

    if-nez v7, :cond_4

    # getter for: Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->terminalBits:I
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->access$200(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v7

    if-le v7, v5, :cond_2

    .line 163
    .end local v2    # "c":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method encode([BLjava/io/OutputStream;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "current":J
    const/4 v5, 0x0

    .line 95
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 96
    aget-byte v7, p1, v4

    and-int/lit16 v0, v7, 0xff

    .line 97
    .local v0, "b":I
    sget-object v7, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODES:[I

    aget v1, v7, v0

    .line 98
    .local v1, "code":I
    sget-object v7, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    aget-byte v6, v7, v0

    .line 100
    .local v6, "nbits":I
    shl-long/2addr v2, v6

    .line 101
    int-to-long v7, v1

    or-long/2addr v2, v7

    .line 102
    add-int/2addr v5, v6

    .line 104
    :goto_1
    const/16 v7, 0x8

    if-lt v5, v7, :cond_0

    .line 105
    add-int/lit8 v5, v5, -0x8

    .line 106
    shr-long v7, v2, v5

    long-to-int v7, v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "b":I
    .end local v1    # "code":I
    .end local v6    # "nbits":I
    :cond_1
    if-lez v5, :cond_2

    .line 111
    rsub-int/lit8 v7, v5, 0x8

    shl-long/2addr v2, v7

    .line 112
    const/16 v7, 0xff

    ushr-int/2addr v7, v5

    int-to-long v7, v7

    or-long/2addr v2, v7

    .line 113
    long-to-int v7, v2

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 115
    :cond_2
    return-void
.end method

.method encodedLength([B)I
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 118
    const-wide/16 v2, 0x0

    .line 120
    .local v2, "len":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 121
    aget-byte v4, p1, v1

    and-int/lit16 v0, v4, 0xff

    .line 122
    .local v0, "b":I
    sget-object v4, Lcom/squareup/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "b":I
    :cond_0
    const-wide/16 v4, 0x7

    add-long/2addr v4, v2

    const/4 v6, 0x3

    shr-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method
