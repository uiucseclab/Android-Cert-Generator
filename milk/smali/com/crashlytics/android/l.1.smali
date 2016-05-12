.class final Lcom/crashlytics/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/aU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crashlytics/android/internal/aU",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/crashlytics/android/l;->a:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/internal/aX;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v1, p1, Lcom/crashlytics/android/internal/aX;->d:Lcom/crashlytics/android/internal/aP;

    iget-boolean v1, v1, Lcom/crashlytics/android/internal/aP;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/crashlytics/android/l;->a:Lcom/crashlytics/android/Crashlytics;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->k()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
