.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "video_chaining_impression"


# static fields
.field private static a:[Lcom/facebook/soloader/SoSource;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/os/StrictMode$ThreadPolicy;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sput-object v1, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    .line 72
    sput-object v1, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    .line 77
    const-string v0, "lib-main"

    sput-object v0, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    sget v1, Lcom/facebook/soloader/SoLoader;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 103
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->b(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized a(Lcom/facebook/soloader/SoSource;)V
    .locals 6

    .prologue
    .line 331
    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->b()V

    .line 332
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/soloader/SoSource;->a(I)V

    .line 333
    sget-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    .line 334
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 335
    sget-object v2, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    sput-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit v1

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 223
    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "http://www.android.com/"

    const-string v2, "java.vendor.url"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :goto_0
    monitor-exit v1

    return-void

    .line 232
    :cond_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    sget-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    .line 268
    :goto_0
    if-nez v3, :cond_7

    .line 273
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    if-nez v0, :cond_6

    .line 274
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    move v0, v1

    :goto_1
    move v6, v2

    move v2, v3

    move v3, v6

    .line 283
    :goto_2
    if-nez v2, :cond_1

    :try_start_0
    sget-object v4, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 284
    sget-object v2, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0, p1}, Lcom/facebook/soloader/SoSource;->a(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 283
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_0
    move v3, v2

    .line 264
    goto :goto_0

    .line 291
    :cond_1
    if-eqz v0, :cond_5

    .line 292
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 293
    sput-object v5, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    move v0, v2

    .line 298
    :goto_3
    if-nez v0, :cond_3

    .line 299
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t find DSO to load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :catchall_0
    move-exception v1

    .line 291
    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 293
    sput-object v5, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    :cond_2
    throw v1

    .line 302
    :cond_3
    if-ne v0, v1, :cond_4

    .line 303
    sget-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->b()V

    .line 257
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    const-class v3, Lcom/facebook/soloader/SoLoader;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    if-nez v2, :cond_8

    .line 122
    sput p1, Lcom/facebook/soloader/SoLoader;->e:I

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-string v2, "LD_LIBRARY_PATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    if-nez v2, :cond_0

    .line 132
    const-string v2, "/vendor/lib:/system/lib"

    .line 135
    :cond_0
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v0

    .line 136
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 140
    new-instance v6, Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v7, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v8, 0x2

    invoke-direct {v7, v6, v8}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_1
    if-eqz p0, :cond_2

    .line 158
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    .line 159
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/soloader/ExoSoSource;

    sget-object v2, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/SoSource;

    .line 192
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()I

    move-result v4

    .line 193
    array-length v1, v0

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 194
    aget-object v1, v0, v2

    invoke-virtual {v1, v4}, Lcom/facebook/soloader/SoSource;->a(I)V

    move v1, v2

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 162
    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    move v2, v1

    .line 166
    :goto_3
    if-eqz v2, :cond_5

    .line 187
    :goto_4
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/soloader/ApkSoSource;

    sget-object v5, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v5, v0}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v2, v0

    .line 162
    goto :goto_3

    .line 177
    :cond_5
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_6

    move v0, v1

    .line 181
    :cond_6
    new-instance v2, Lcom/facebook/soloader/DirectorySoSource;

    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_4

    .line 196
    :cond_7
    sput-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_8
    monitor-exit v3

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 309
    sget-object v1, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/SoSource;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    .line 311
    return-object v1

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
