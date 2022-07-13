import { BaseEntity, Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from 'typeorm';


@Entity('Movies')

export class Movies extends BaseEntity{
    @PrimaryGeneratedColumn('increment')
    id!: number;
    @Column()
    name!: string;
    @Column()
    desc!: string;


    @CreateDateColumn({
        type: 'time'
    })
    @Column()
    imgurl: string;
    @Column()
    categorie: string;
}