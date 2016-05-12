.class public final Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "FieldProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

.field protected final transient _field:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 49
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 50
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V

    .line 55
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 56
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/reflect/Field;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 65
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 66
    if-nez p2, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Field passed for property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V

    .line 43
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 44
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    .line 45
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object p1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    move-result-object v0

    return-object v0
.end method

.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method
