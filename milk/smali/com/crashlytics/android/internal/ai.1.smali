.class public final enum Lcom/crashlytics/android/internal/ai;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/internal/ai;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/crashlytics/android/internal/ai;

.field private static enum b:Lcom/crashlytics/android/internal/ai;

.field private static enum c:Lcom/crashlytics/android/internal/ai;

.field private static enum d:Lcom/crashlytics/android/internal/ai;

.field private static final synthetic f:[Lcom/crashlytics/android/internal/ai;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9
    new-instance v0, Lcom/crashlytics/android/internal/ai;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, Lcom/crashlytics/android/internal/ai;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/internal/ai;->a:Lcom/crashlytics/android/internal/ai;

    new-instance v0, Lcom/crashlytics/android/internal/ai;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/internal/ai;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/internal/ai;->b:Lcom/crashlytics/android/internal/ai;

    new-instance v0, Lcom/crashlytics/android/internal/ai;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, Lcom/crashlytics/android/internal/ai;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/internal/ai;->c:Lcom/crashlytics/android/internal/ai;

    new-instance v0, Lcom/crashlytics/android/internal/ai;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, Lcom/crashlytics/android/internal/ai;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/crashlytics/android/internal/ai;->d:Lcom/crashlytics/android/internal/ai;

    .line 8
    new-array v0, v6, [Lcom/crashlytics/android/internal/ai;

    sget-object v1, Lcom/crashlytics/android/internal/ai;->a:Lcom/crashlytics/android/internal/ai;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/internal/ai;->b:Lcom/crashlytics/android/internal/ai;

    aput-object v1, v0, v2

    sget-object v1, Lcom/crashlytics/android/internal/ai;->c:Lcom/crashlytics/android/internal/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/internal/ai;->d:Lcom/crashlytics/android/internal/ai;

    aput-object v1, v0, v4

    sput-object v0, Lcom/crashlytics/android/internal/ai;->f:[Lcom/crashlytics/android/internal/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/crashlytics/android/internal/ai;->e:I

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;
    .locals 1

    .prologue
    .line 33
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/crashlytics/android/internal/ai;->d:Lcom/crashlytics/android/internal/ai;

    .line 36
    :goto_1
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/crashlytics/android/internal/ai;->a:Lcom/crashlytics/android/internal/ai;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/crashlytics/android/internal/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/ai;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/internal/ai;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/crashlytics/android/internal/ai;->f:[Lcom/crashlytics/android/internal/ai;

    invoke-virtual {v0}, [Lcom/crashlytics/android/internal/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/internal/ai;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/crashlytics/android/internal/ai;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/crashlytics/android/internal/ai;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
