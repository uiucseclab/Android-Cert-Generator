.class final Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "muted"


# instance fields
.field public final ah:J

.field public final ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;",
            ">;"
        }
    .end annotation
.end field

.field public final aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 153
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ah:J

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ai:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    .line 156
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ai:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public final d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ai:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 189
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ag:I

    if-ne v3, p1, :cond_0

    .line 193
    :goto_1
    return-object v0

    .line 187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 209
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ag:I

    if-ne v3, p1, :cond_0

    .line 213
    :goto_1
    return-object v0

    .line 207
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ag:I

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ai:Ljava/util/List;

    new-array v2, v3, [Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aj:Ljava/util/List;

    new-array v2, v3, [Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
