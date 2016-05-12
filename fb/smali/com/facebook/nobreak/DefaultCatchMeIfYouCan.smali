.class public Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;
.super Ljava/lang/Object;
.source "{density="

# interfaces
.implements Lcom/facebook/nobreak/CatchMeIfYouCan;


# static fields
.field public static final a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final e:Landroid/app/Application;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Landroid/app/PendingIntent;

.field private n:Lcom/facebook/nobreak/ResetHandler;

.field private final o:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 41
    const-class v0, Lcom/facebook/nobreak/CatchMeIfYouCan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    sput-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.wakizashi"

    const-string v2, "D77FDAE822D6CBAAF1FB623D498999CE6A5091C2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.wakizashi:nodex"

    const-string v2, "08190E63CA3C1AC26EB54E7D1EA78F5BE4B38C6E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.wakizashi:videoplayer"

    const-string v2, "1F1D301A78464A665875A2641840A2D7D0D0ACE9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.wakizashi:browser"

    const-string v2, "2EEE2643E714F987C2817EB40AA8E4023B9D195A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.katana"

    const-string v2, "A23B203FD3AAFC6DCB84E438DDA678B6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.katana:nodex"

    const-string v2, "BC5008AE07DDEC8D47CBBAF714EE96CA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.katana:videoplayer"

    const-string v2, "D535FEB312F27A53FC4A3D691CE03F6A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.katana:browser"

    const-string v2, "3C408CDDB836F0F3854A466AC6F08E2C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.orca"

    const-string v2, "BE80AEC1DB9A2B53C9D399DB0C602181"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.pagesmanager"

    const-string v2, "5CD6A1B3753D7C7F103382B1C9A38A59"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    const-string v1, "com.facebook.phone"

    const-string v2, "B51B2DC06AF95D3C76FAE59A66C38B33"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v1, "default"

    const/4 v2, 0x3

    const-wide/32 v4, 0x1d4c0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)V
    .locals 6
    .param p2    # [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Landroid/app/Application;

    .line 228
    const-string v0, "cmiyc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->h:Ljava/lang/String;

    .line 234
    .line 436
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->a()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_1

    .line 437
    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 438
    aget-object v4, p2, v3

    iget-object v4, v4, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    aget-object v3, p2, v3

    .line 443
    :goto_1
    move-object v0, v3

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    .line 237
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 238
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 239
    return-void

    .line 437
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    :cond_1
    sget-object v3, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    goto :goto_1
.end method

.method private static a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "undefined"

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_1
    sget-object v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 5
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 550
    .line 553
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 554
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 560
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 565
    :goto_0
    return-object v0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 556
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 557
    :goto_1
    :try_start_3
    sget-object v3, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v4, "IOException on readLine"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 560
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 561
    :catch_2
    move-exception v1

    .line 562
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 560
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 563
    :goto_3
    throw v0

    .line 561
    :catch_3
    move-exception v1

    .line 562
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 559
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 556
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 451
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 452
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v2, v1

    .line 459
    const/4 v6, 0x0

    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 467
    :goto_1
    return-object v0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "Did not find support for SHA-1 algorithm"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 465
    :catch_1
    move-exception v1

    .line 466
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "Did not find support for UTF-8 encoding"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 356
    if-nez p2, :cond_0

    .line 357
    invoke-static {p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object p2

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 490
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 491
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 493
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    :try_start_2
    sget-object v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 366
    if-nez p2, :cond_0

    .line 367
    invoke-static {p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object p2

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 388
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Landroid/app/Application;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 393
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    .line 394
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 398
    :goto_0
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is restarting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d()V

    .line 402
    :cond_0
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static c()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static d()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 414
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 415
    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    :try_start_1
    sget-object v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 504
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->l:Z

    .line 528
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v1, v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    iput v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 529
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J

    .line 531
    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 535
    array-length v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 537
    const/4 v1, 0x0

    :try_start_4
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 538
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    iput v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 543
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 514
    :catch_1
    move-exception v0

    :try_start_6
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 307
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v0

    .line 309
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f()V

    .line 311
    .line 424
    sget-object v6, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Uncaught exception in \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\':"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p2}, Lcom/facebook/nobreak/NobreakUtils;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v9, v7, v6

    .line 429
    sget-object v10, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 431
    .line 313
    :cond_0
    iget-wide v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-wide v4, v4, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 315
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b()V

    .line 335
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->d:Z

    if-eqz v0, :cond_6

    .line 340
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/common/process/ProcessName;->g()Lcom/facebook/common/process/ProcessName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is exiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d()V

    .line 350
    :cond_2
    :goto_2
    return-void

    .line 317
    :cond_3
    iget v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    iget-object v3, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v3, v3, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    if-lt v2, v3, :cond_5

    .line 320
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a()V

    .line 322
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e()V

    .line 323
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->f:Z

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Landroid/app/Application;

    .line 271
    new-instance v6, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;

    const/4 v7, 0x0

    invoke-direct {v6}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;-><init>()V

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;->a(Landroid/content/Context;)V

    .line 272
    .line 326
    :cond_4
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->n:Lcom/facebook/nobreak/ResetHandler;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 331
    :cond_5
    iget v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V

    .line 332
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b()V

    goto :goto_1

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
