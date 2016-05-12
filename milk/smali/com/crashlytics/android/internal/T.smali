.class final Lcom/crashlytics/android/internal/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/O;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/O;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    .line 196
    iget-object v1, p0, Lcom/crashlytics/android/internal/T;->a:Lcom/crashlytics/android/internal/O;

    new-instance v2, Lcom/crashlytics/android/internal/I;

    invoke-direct {v2}, Lcom/crashlytics/android/internal/I;-><init>()V

    iput-object v2, v1, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    .line 197
    invoke-interface {v0}, Lcom/crashlytics/android/internal/U;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v0, "Crashlytics failed to disable analytics."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
