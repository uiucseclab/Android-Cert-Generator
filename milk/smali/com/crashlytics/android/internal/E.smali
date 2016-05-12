.class final Lcom/crashlytics/android/internal/E;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/D;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/D;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/crashlytics/android/internal/E;->a:Lcom/crashlytics/android/internal/D;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/E;->a:Lcom/crashlytics/android/internal/D;

    invoke-static {v0}, Lcom/crashlytics/android/internal/D;->a(Lcom/crashlytics/android/internal/D;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;

    move-result-object v1

    const-string v2, "Crashlytics"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
