.class final Lcom/crashlytics/android/internal/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/crashlytics/android/internal/O;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/O;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    iput-object p2, p0, Lcom/crashlytics/android/internal/P;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    iget-object v10, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    iget-object v0, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v0}, Lcom/crashlytics/android/internal/O;->a(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v1}, Lcom/crashlytics/android/internal/O;->b(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v2}, Lcom/crashlytics/android/internal/O;->c(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v3}, Lcom/crashlytics/android/internal/O;->d(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v4}, Lcom/crashlytics/android/internal/O;->e(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v5}, Lcom/crashlytics/android/internal/O;->f(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v6}, Lcom/crashlytics/android/internal/O;->g(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/crashlytics/android/internal/P;->b:Lcom/crashlytics/android/internal/O;

    invoke-static {v7}, Lcom/crashlytics/android/internal/O;->h(Lcom/crashlytics/android/internal/O;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/crashlytics/android/internal/P;->a:Ljava/lang/String;

    const-string v9, "sessionId"

    invoke-static {v9, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    sget-object v8, Lcom/crashlytics/android/internal/W;->i:Lcom/crashlytics/android/internal/W;

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/internal/V;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/W;Ljava/util/Map;)Lcom/crashlytics/android/internal/V;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/crashlytics/android/internal/U;->a(Lcom/crashlytics/android/internal/V;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    const-string v0, "Crashlytics failed to record crash event"

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
