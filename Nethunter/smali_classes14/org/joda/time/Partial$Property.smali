.class public Lorg/joda/time/Partial$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "Partial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/Partial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074d5e4b020L


# instance fields
.field private final iFieldIndex:I

.field private final iPartial:Lorg/joda/time/Partial;


# direct methods
.method constructor <init>(Lorg/joda/time/Partial;I)V
    .locals 0

    .line 873
    invoke-direct {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;-><init>()V

    .line 874
    iput-object p1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    .line 875
    iput p2, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    .line 876
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .line 936
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 937
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 938
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .line 960
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 961
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 962
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v0
.end method

.method public get()I
    .locals 2

    .line 914
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 2

    .line 885
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public getPartial()Lorg/joda/time/Partial;
    .locals 1

    .line 904
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/ReadablePartial;
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .line 977
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 978
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 979
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/Partial;
    .locals 1

    .line 1010
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Partial$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;

    move-result-object p1

    return-object p1
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;
    .locals 7

    .line 994
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v4

    .line 995
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object p1

    .line 996
    new-instance p2, Lorg/joda/time/Partial;

    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {p2, v0, p1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object p2
.end method

.method public withMaximumValue()Lorg/joda/time/Partial;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/Partial;
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method
