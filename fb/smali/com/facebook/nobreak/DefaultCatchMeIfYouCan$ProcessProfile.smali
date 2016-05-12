.class public Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
.super Ljava/lang/Object;
.source "{density="


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 172
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v8, v7

    invoke-direct/range {v1 .. v8}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;IJZZZ)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJZZZ)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->a:Ljava/lang/String;

    .line 196
    iput p2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    .line 197
    iput-wide p3, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->c:J

    .line 198
    iput-boolean p5, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->d:Z

    .line 199
    iput-boolean p6, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->e:Z

    .line 200
    iput-boolean p7, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->f:Z

    .line 201
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silent ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], restart ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], logout ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
