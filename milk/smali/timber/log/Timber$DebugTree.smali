.class public Ltimber/log/Timber$DebugTree;
.super Ljava/lang/Object;
.source "Timber.java"

# interfaces
.implements Ltimber/log/Timber$TaggedTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugTree"
.end annotation


# static fields
.field private static final ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

.field private static final NEXT_TAG:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-string v0, "\\$\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ltimber/log/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    .line 207
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ltimber/log/Timber$DebugTree;->NEXT_TAG:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    sget-object v3, Ltimber/log/Timber$DebugTree;->NEXT_TAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 212
    sget-object v3, Ltimber/log/Timber$DebugTree;->NEXT_TAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 226
    .end local v2    # "tag":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 216
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 217
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 218
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Synthetic stacktrace didn\'t have enough elements: are you using proguard?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_1
    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 222
    sget-object v3, Ltimber/log/Timber$DebugTree;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 223
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :cond_2
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 231
    array-length v0, p1

    if-nez v0, :cond_0

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "message":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 276
    :cond_0
    if-eqz p3, :cond_2

    .line 277
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 286
    :cond_1
    :goto_0
    invoke-static {}, Ltimber/log/Timber$DebugTree;->createTag()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xfa0

    if-ge v3, v4, :cond_4

    .line 288
    invoke-static {p1, v2, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 282
    :cond_3
    if-eqz p3, :cond_1

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 293
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_4
    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "lines":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 295
    .local v0, "line":Ljava/lang/String;
    invoke-static {p1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 243
    const/4 v0, 0x3

    invoke-static {p1, p2}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 247
    const/4 v0, 0x3

    invoke-static {p2, p3}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 267
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 271
    const/4 v0, 0x6

    invoke-static {p2, p3}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 251
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 255
    const/4 v0, 0x4

    invoke-static {p2, p3}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    return-void
.end method

.method public tag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Ltimber/log/Timber$DebugTree;->NEXT_TAG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 235
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 239
    const/4 v0, 0x2

    invoke-static {p2, p3}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 259
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 263
    const/4 v0, 0x5

    invoke-static {p2, p3}, Ltimber/log/Timber$DebugTree;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Ltimber/log/Timber$DebugTree;->throwShade(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method
