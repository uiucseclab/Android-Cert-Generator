.class abstract Lcom/crashlytics/android/a;
.super Lcom/crashlytics/android/internal/Z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/crashlytics/android/internal/Z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V

    .line 44
    return-void
.end method

.method private static a(Lcom/crashlytics/android/internal/ay;Lcom/crashlytics/android/b;)Lcom/crashlytics/android/internal/ay;
    .locals 7

    .prologue
    .line 81
    const-string v0, "app[identifier]"

    iget-object v1, p1, Lcom/crashlytics/android/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p1, Lcom/crashlytics/android/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p1, Lcom/crashlytics/android/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p1, Lcom/crashlytics/android/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p1, Lcom/crashlytics/android/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p1, Lcom/crashlytics/android/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p1, Lcom/crashlytics/android/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v2

    .line 89
    iget-object v0, p1, Lcom/crashlytics/android/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "app[instance_identifier]"

    iget-object v1, p1, Lcom/crashlytics/android/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    .line 93
    :cond_0
    iget-object v0, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    if-eqz v0, :cond_1

    .line 94
    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v3, v3, Lcom/crashlytics/android/Y;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 100
    const-string v0, "app[icon][hash]"

    iget-object v3, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget-object v3, v3, Lcom/crashlytics/android/Y;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/crashlytics/android/internal/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v3, "app[icon][width]"

    iget-object v4, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v4, v4, Lcom/crashlytics/android/Y;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v3, "app[icon][height]"

    iget-object v4, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v4, v4, Lcom/crashlytics/android/Y;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/ay;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/ab;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v3

    const-string v4, "Crashlytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v6, v6, Lcom/crashlytics/android/Y;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/ab;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Lcom/crashlytics/android/internal/ab;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/b;)Z
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/crashlytics/android/a;->b()Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    .line 49
    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lcom/crashlytics/android/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/v;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lcom/crashlytics/android/a;->a(Lcom/crashlytics/android/internal/ay;Lcom/crashlytics/android/b;)Lcom/crashlytics/android/internal/ay;

    move-result-object v1

    .line 52
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending app info to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App icon hash is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget-object v4, v4, Lcom/crashlytics/android/Y;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "App icon size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v4, v4, Lcom/crashlytics/android/Y;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/crashlytics/android/b;->j:Lcom/crashlytics/android/Y;

    iget v4, v4, Lcom/crashlytics/android/Y;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/crashlytics/android/internal/ay;->b()I

    move-result v2

    .line 61
    const-string v0, "POST"

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/ay;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 63
    :goto_0
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v3

    const-string v4, "Crashlytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " app request ID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "X-REQUEST-ID"

    invoke-virtual {v1, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v0

    const-string v1, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Result was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v2}, Lcom/crashlytics/android/internal/r;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 61
    :cond_1
    const-string v0, "Update"

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
