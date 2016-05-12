.class final Lcom/crashlytics/android/D;
.super Lcom/crashlytics/android/internal/aa;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p2, p0, Lcom/crashlytics/android/D;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/crashlytics/android/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1009
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->q()Lcom/crashlytics/android/V;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_0

    .line 1014
    new-instance v1, Lcom/crashlytics/android/aa;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/aa;-><init>(Lcom/crashlytics/android/V;)V

    new-instance v0, Lcom/crashlytics/android/Z;

    iget-object v2, p0, Lcom/crashlytics/android/D;->a:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/v;->j()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/Z;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/aa;->a(Lcom/crashlytics/android/Z;)Z

    .line 1016
    :cond_0
    return-void
.end method
