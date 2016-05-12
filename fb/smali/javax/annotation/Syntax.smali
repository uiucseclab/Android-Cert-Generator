.class public interface abstract annotation Ljavax/annotation/Syntax;
.super Ljava/lang/Object;
.source "mcc"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/annotation/Syntax;
        when = .enum Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Ljavax/annotation/meta/TypeQualifier;
    applicableTo = Ljava/lang/CharSequence;
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

.method public abstract when()Ljavax/annotation/meta/When;
.end method
