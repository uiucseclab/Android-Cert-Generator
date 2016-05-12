.class public final enum Lcom/crashlytics/android/internal/ax;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/internal/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/internal/ax;

.field public static final enum b:Lcom/crashlytics/android/internal/ax;

.field public static final enum c:Lcom/crashlytics/android/internal/ax;

.field public static final enum d:Lcom/crashlytics/android/internal/ax;

.field private static final synthetic e:[Lcom/crashlytics/android/internal/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/crashlytics/android/internal/ax;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ax;->a:Lcom/crashlytics/android/internal/ax;

    .line 5
    new-instance v0, Lcom/crashlytics/android/internal/ax;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/internal/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ax;->b:Lcom/crashlytics/android/internal/ax;

    .line 6
    new-instance v0, Lcom/crashlytics/android/internal/ax;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/internal/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ax;->c:Lcom/crashlytics/android/internal/ax;

    .line 7
    new-instance v0, Lcom/crashlytics/android/internal/ax;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/internal/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/internal/ax;->d:Lcom/crashlytics/android/internal/ax;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/crashlytics/android/internal/ax;

    sget-object v1, Lcom/crashlytics/android/internal/ax;->a:Lcom/crashlytics/android/internal/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/crashlytics/android/internal/ax;->b:Lcom/crashlytics/android/internal/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/internal/ax;->c:Lcom/crashlytics/android/internal/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/internal/ax;->d:Lcom/crashlytics/android/internal/ax;

    aput-object v1, v0, v5

    sput-object v0, Lcom/crashlytics/android/internal/ax;->e:[Lcom/crashlytics/android/internal/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/internal/ax;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/crashlytics/android/internal/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ax;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/internal/ax;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/crashlytics/android/internal/ax;->e:[Lcom/crashlytics/android/internal/ax;

    invoke-virtual {v0}, [Lcom/crashlytics/android/internal/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/internal/ax;

    return-object v0
.end method
