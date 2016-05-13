.class public Lcom/facebook/rti/mqtt/protocol/MqttParameters;
.super Ljava/lang/Object;
.source "saiz"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field static final a:[B


# instance fields
.field private A:Z

.field private B:I

.field private final b:I

.field private final c:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

.field private final d:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/rti/mqtt/common/config/UserAgent;

.field private final g:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Ljava/lang/String;

.field private final s:Lcom/facebook/rti/common/thrift/MqttTopic;

.field private final t:Z

.field private final u:Ljava/lang/Long;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IIZLcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/config/UserAgent;Lcom/facebook/rti/common/util/NonInjectProvider;IIIIIILcom/facebook/rti/common/util/NonInjectProvider;Ljava/util/List;ZZZLcom/facebook/rti/common/thrift/MqttTopic;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p18    # Ljava/util/List;
        .annotation build Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Long;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/common/config/UserAgent;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Integer;",
            ">;IIIIII",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;ZZZ",
            "Lcom/facebook/rti/common/thrift/MqttTopic;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->y:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->b:I

    .line 107
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->z:I

    .line 108
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->A:Z

    .line 109
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->c:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    .line 110
    new-instance v2, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v2, p6, p7, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 112
    iput-object p8, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->e:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    .line 114
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->g:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 115
    move/from16 v0, p11

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->h:I

    .line 116
    move/from16 v0, p12

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->i:I

    .line 117
    move/from16 v0, p13

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->j:I

    .line 118
    move/from16 v0, p14

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->B:I

    .line 119
    move/from16 v0, p15

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->k:I

    .line 120
    move/from16 v0, p16

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->l:I

    .line 121
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->m:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 122
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->n:Ljava/util/List;

    .line 123
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->o:Z

    .line 124
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->p:Z

    .line 125
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->q:Z

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->r:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->s:Lcom/facebook/rti/common/thrift/MqttTopic;

    .line 133
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->t:Z

    .line 134
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->u:Ljava/lang/Long;

    .line 135
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->v:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->w:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->x:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 293
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 312
    and-int/lit16 v3, v3, 0xff

    .line 313
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a:[B

    ushr-int/lit8 v5, v3, 0x4

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    sget-object v4, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->a:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->z:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->A:Z

    return v0
.end method

.method public final f()Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->c:Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->d:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/facebook/rti/mqtt/common/config/UserAgent;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->f:Lcom/facebook/rti/mqtt/common/config/UserAgent;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->g:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->h:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->i:I

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->j:I

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->B:I

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->k:I

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->o:Z

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->l:I

    return v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->m:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->n:Ljava/util/List;

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->p:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->q:Z

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Lcom/facebook/rti/common/thrift/MqttTopic;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->s:Lcom/facebook/rti/common/thrift/MqttTopic;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->t:Z

    return v0
.end method

.method public final z()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->u:Ljava/lang/Long;

    return-object v0
.end method
