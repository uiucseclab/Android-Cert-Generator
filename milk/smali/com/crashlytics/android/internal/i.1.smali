.class interface abstract Lcom/crashlytics/android/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/crashlytics/android/internal/j;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/j;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/i;->a:Lcom/crashlytics/android/internal/i;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/crashlytics/android/internal/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/internal/g;",
            ">;>;"
        }
    .end annotation
.end method
