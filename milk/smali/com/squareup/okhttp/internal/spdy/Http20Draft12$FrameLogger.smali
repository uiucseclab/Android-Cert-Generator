.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;
.super Ljava/lang/Object;
.source "Http20Draft12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .prologue
    .line 737
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "DATA"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "HEADERS"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "PRIORITY"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "RST_STREAM"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "SETTINGS"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string v19, "PUSH_PROMISE"

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string v19, "PING"

    aput-object v19, v17, v18

    const/16 v18, 0x7

    const-string v19, "GOAWAY"

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, "WINDOW_UPDATE"

    aput-object v19, v17, v18

    const/16 v18, 0x9

    const-string v19, "CONTINUATION"

    aput-object v19, v17, v18

    const/16 v18, 0xa

    const-string v19, "ALTSVC"

    aput-object v19, v17, v18

    const/16 v18, 0xb

    const-string v19, "BLOCKED"

    aput-object v19, v17, v18

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 756
    const/16 v17, 0x40

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 757
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 760
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 761
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    const-string v18, "%8s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x20

    const/16 v20, 0x30

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v6

    .line 760
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 764
    :cond_0
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 765
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x1

    const-string v19, "END_STREAM"

    aput-object v19, v17, v18

    .line 766
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x2

    const-string v19, "END_SEGMENT"

    aput-object v19, v17, v18

    .line 767
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x3

    const-string v19, "END_STREAM|END_SEGMENT"

    aput-object v19, v17, v18

    .line 768
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 771
    .local v14, "prefixFlags":[I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x8

    const-string v19, "PAD_LOW"

    aput-object v19, v17, v18

    .line 772
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x18

    const-string v19, "PAD_LOW|PAD_HIGH"

    aput-object v19, v17, v18

    .line 773
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 775
    .local v16, "suffixFlags":[I
    move-object v1, v14

    .local v1, "arr$":[I
    array-length v10, v1

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_2

    aget v13, v1, v8

    .line 776
    .local v13, "prefixFlag":I
    move-object/from16 v2, v16

    .local v2, "arr$":[I
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v11, :cond_1

    aget v15, v2, v7

    .line 777
    .local v15, "suffixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 776
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 775
    .end local v15    # "suffixFlag":I
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 781
    .end local v2    # "arr$":[I
    .end local v11    # "len$":I
    .end local v13    # "prefixFlag":I
    :cond_2
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x4

    const-string v19, "END_HEADERS"

    aput-object v19, v17, v18

    .line 782
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x20

    const-string v19, "PRIORITY"

    aput-object v19, v17, v18

    .line 783
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x24

    const-string v19, "END_HEADERS|PRIORITY"

    aput-object v19, v17, v18

    .line 784
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    .line 787
    .local v5, "frameFlags":[I
    move-object v1, v5

    .restart local v1    # "arr$":[I
    array-length v10, v1

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v9, v7

    .end local v1    # "arr$":[I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_5

    aget v4, v1, v9

    .line 788
    .local v4, "frameFlag":I
    move-object v2, v14

    .restart local v2    # "arr$":[I
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v7, 0x0

    .end local v9    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v2    # "arr$":[I
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v11, :cond_4

    aget v13, v2, v8

    .line 789
    .restart local v13    # "prefixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 790
    move-object/from16 v3, v16

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_5
    if-ge v7, v12, :cond_3

    aget v15, v3, v7

    .line 791
    .restart local v15    # "suffixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v4

    or-int v18, v18, v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 790
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 788
    .end local v15    # "suffixFlag":I
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_4

    .line 787
    .end local v3    # "arr$":[I
    .end local v12    # "len$":I
    .end local v13    # "prefixFlag":I
    :cond_4
    add-int/lit8 v7, v9, 0x1

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v9, v7

    .end local v7    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_3

    .line 797
    .end local v4    # "frameFlag":I
    :cond_5
    const/4 v6, 0x0

    :goto_6
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    .line 798
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v17, v17, v6

    if-nez v17, :cond_6

    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    sget-object v18, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v18, v18, v6

    aput-object v18, v17, v6

    .line 797
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 800
    :cond_7
    return-void

    .line 768
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 773
    :array_1
    .array-data 4
        0x8
        0x18
    .end array-data

    .line 784
    :array_2
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .prologue
    .line 713
    if-nez p1, :cond_0

    const-string v1, ""

    .line 733
    :goto_0
    return-object v1

    .line 714
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 726
    :pswitch_0
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 728
    .local v0, "result":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 729
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 717
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "ACK"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 724
    :pswitch_2
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_0

    .line 726
    :cond_2
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_1

    .line 730
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 731
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 733
    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .locals 7
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 701
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_0

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 702
    .local v1, "formattedType":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "formattedFlags":Ljava/lang/String;
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v2, "<<"

    :goto_1
    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 701
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_0
    const-string v2, "0x%02x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 703
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    .restart local v1    # "formattedType":Ljava/lang/String;
    :cond_1
    const-string v2, ">>"

    goto :goto_1
.end method
